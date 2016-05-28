#include "CRB_Lexer.h"

CRB_Lexer::CRB_Lexer(string str) {
        ///ATTENTION
        /** GIATII NA TO VALEIS STON CONSTRUCTOR NA KANEI ANALYZE!!!???
            plz allakse to se function gia na min xreiastei na kano duplicate ton kodika
		**/

	//setup 'lists' based upon which the lexer will determine the type and content of each token

	identifierStartChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_";
	identifierChars = identifierStartChars + "0123456789";

	numberStartChars = "0123456789-";
	numberChars = numberStartChars + ".";

	singleCharOperators = "!*()-=+{}[]<>%^/;.,";
	doubleCharOperators = "<//*//==!=+=-=*=/=++-->=<=";//'*/' is excluded from this list because of the way comments are processed

	stringStartChars = "\"'";

	spaceChars = "\n\t ";
        cchar = ' ';
        absoluteColIndex = 0;
        lineIndex = 0;
}

void CRB_Lexer::analyze(const string &str){

	lineIndex = 0;
	maxLen = str.length();
	sourceStr = str;

	getNextCChar();

}

CToken CRB_Lexer::getNextCToken() {

	CToken result;
	while (true) {
		//skip spaces
		if (isSpaceChar(cchar)) {
			getNextCChar();
		}

		//handle identifiers
		else if (isIdentStartChar(cchar)) {
			result.type = IDENTIFIER;

			while(isIdentChar(cchar)){
				result.cargo += cchar;
				getNextCChar();
			}

			break;
		}

		//hanlde numbers
		else if (isNumStartChar((int)cchar)) {
			result.type = NUMBER;

			while (isNumChar(cchar)) {
				result.cargo += cchar;
				getNextCChar();
			}

			break;
		}

		//handle double char operators, and on occasion single char operators
		else if (isDoubleCharOperator1Char(cchar)) {
			result.type = OPERATOR;
			result.cargo = cchar;

			string op = "";
			op += cchar;

			getNextCChar();

			//check if second character also matches suspected double char operator
			if (isDoubleCharOperator2Char(cchar)) {
				result.cargo += cchar;
				op += cchar;

				getNextCChar();

				//special case when double char operator is comment of type '/*'...'*/'
				if (op == "/*") {/**/
					result.type = COMMENT;

					result.cargo += cchar;

					while (true){
						if (cchar == '*') {
							getNextCChar();
							if (cchar == '/'){
								result.cargo += cchar;
								break;
							}
						}
						getNextCChar();
						result.cargo += cchar;
					}
					getNextCChar();

				//special case when double char operator is comment of type '//'...'\n'
				} else if (op == "//") {
					result.type = COMMENT;

					result.cargo += cchar;

					while (cchar != '\n') {
						result.cargo += cchar;
						getNextCChar();
					}
				}
			}

			break;
		}

		//handle single char operators
		else if (isSingleCharOperator(cchar)) {
			result.type = OPERATOR;

			result.cargo = cchar;

			getNextCChar();

			break;
		}

		//handle strings
		else if(isStringStartChar(cchar)) {
			char c = cchar;

			result.type = STRING;

			getNextCChar();
			while (cchar != c) {
				result.cargo += cchar;
				getNextCChar();
			}

			getNextCChar();

			break;
		}

		//throw error if unexpected character is found
		else {
			if (absoluteColIndex <= maxLen)
				throw UnexpectedCharacterException(errorMessage());

			break;
		}
	}

	return result;
}

//isStringStartChar is defined publicly to be able to be accessed by the function 'isStringStartChar()' of the class 'CSL_Parser'
bool CRB_Lexer::isStringStartChar(char c) {
	bool result = false;

	for(unsigned int i = 0; i < stringStartChars.length(); i++) {
		if (c == stringStartChars[i])
			result = true;
	}

	return result;
}

void CRB_Lexer::getNextCChar() {

	char curChar = '\0';

	if (!(absoluteColIndex > maxLen)) {

		curChar = sourceStr[absoluteColIndex];

		if (curChar == '\n') {

	                line_indices.push_back(absoluteColIndex);

			lineIndex++;

		}

		absoluteColIndex++;
	}

	cchar = curChar;
}

bool CRB_Lexer::isIdentStartChar(char c) {
	bool result = false;

	for(unsigned int i = 0; i < identifierStartChars.length(); i++) {
		if (c == identifierStartChars[i])
			result = true;
	}

	return result;
}

bool CRB_Lexer::isIdentChar(char c) {
	bool result = false;

	for(unsigned int i = 0; i < identifierChars.length(); i++) {
		if (c == identifierChars[i])
			result = true;
	}

	return result;
}

bool CRB_Lexer::isNumStartChar(char c) {
	bool result = false;

	for(unsigned int i = 0; i < numberStartChars.length(); i++) {
		if (c == numberStartChars[i])
			result = true;
	}

	return result;
}

bool CRB_Lexer::isNumChar(char c) {
	bool result = false;

	for(unsigned int i = 0; i < numberChars.length(); i++) {
		if (c == numberChars[i])
			result = true;
	}

	return result;
}

bool CRB_Lexer::isSingleCharOperator(char c) {
	bool result = false;

	for(unsigned int i = 0; i < singleCharOperators.length(); i++) {
		if (c == singleCharOperators[i])
			result = true;
	}

	return result;
}

//check if character is a first character of double char operator and save the indices of these operators in the
//list to make sure the right operators are checked when the function isDoubleCharOperator2Char() gets called
bool CRB_Lexer::isDoubleCharOperator1Char(char c) {
	bool result = false;

	for(unsigned int i = 0; i < doubleCharOperators.length(); i++) {
		if (i%2 == 0) {
			//check t
			if (c == doubleCharOperators[i]) {
				suspectedDOperatorIndex.push_back(i + 1);

				result = true;
			}
		}
	}

	return result;
}

//check if character is a second character of double char operators that have previously been selected
bool CRB_Lexer::isDoubleCharOperator2Char(char c) {
	for (unsigned int i = 0; i < suspectedDOperatorIndex.size(); i++) {
		if (c == doubleCharOperators[suspectedDOperatorIndex[i]]) {
			suspectedDOperatorIndex.clear();
			return true;
		}
	}
	suspectedDOperatorIndex.clear();
	return false;
}

bool CRB_Lexer::isSpaceChar(char c) {
	bool result = false;

	for(unsigned int i = 0; i < spaceChars.length(); i++) {
		if (c == spaceChars[i])
			result = true;
	}

	return result;
}

string CRB_Lexer::errorMessage() {

	size_t relative_id = findRelativeIndex(absoluteColIndex-1);
	//cout << relative_id << endl;
	size_t abs_id = findLine(absoluteColIndex-1)+1;

	return " at: " + std::to_string(abs_id) + ":" + to_string(relative_id) + " - '" + cchar + "'";
}

size_t CRB_Lexer::findRelativeIndex(size_t a_index){
	///basically count "\n"s since line_indices is deemed useless
	size_t linecount = 0;
	for(size_t i=0; i < a_index; i++){
		if(sourceStr[i] == '\n') linecount=i;
    		cout << sourceStr[i];
	}
	return absoluteColIndex-linecount-2;
}

size_t CRB_Lexer::findLine(size_t a_index){
	///basically count "\n"s since line_indices is deemed useless
	return count(this->sourceStr.begin(), this->sourceStr.begin()+a_index, '\n');
}
