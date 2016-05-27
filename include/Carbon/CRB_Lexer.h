/**
  * Scanner_Lexer.h
  *
  *  Created on: Sep 23, 2015
  *      Author: andreas
  */

/** Undergoing memory and performance
  * improvements.
  * backup on [shared_folder]/mainline_backup/Carbon_include/CScanner_CLexer.h
  * (philsegeler@gmail.com) March 5, 2016
  * possible rename to "CSL_Lexer.h" after agreement (because CScanner_CLexer as a name sucks IMHO)
  */

#ifndef CSCANNER_CLEXER_H_
#define CSCANNER_CLEXER_H_

#include "FE_Libs.h"
#include "Exceptions.h"

using namespace std;

struct CToken {
	string type = "eos";
	string cargo = "";
};

//--------------------------------------------------Lexical Analyzer-------------------------------------------------

class CRB_Lexer {
    friend class FE_EventParser;
    friend class CSL_Parser;
    friend class CSL_Interpreter;
public:

	CRB_Lexer(string str);
    void analyze(const string &);
	CToken getNextCToken();

	//isStringStartChar is defined publicly to be able to be accessed by the function 'isStringStartChar()' of the class 'CSL_Parser'
	bool isStringStartChar(char);
protected:

    ///variables that define current state
    char cchar;
	size_t absoluteColIndex = 0;
	size_t lineIndex=0;
	vector<size_t> line_indices;
	string sourceStr;

	size_t maxLen;

	//Character lists
	string identifierStartChars;
	string identifierChars;

	string numberStartChars;
	string numberChars;

	string singleCharOperators;
	string doubleCharOperators;

	string stringStartChars;

	string spaceChars;

	//types
	string IDENTIFIER = "identifier";
	string STRING = "string";
	string NUMBER = "number";
	string OPERATOR = "operator";
	string SPACE = "space";
	string END = "eos";
	string COMMENT = "comment";

	vector<int> suspectedDOperatorIndex;

	void getNextCChar();
	bool isIdentStartChar(char);
	bool isIdentChar(char);
	bool isNumStartChar(char);
	bool isNumChar(char);
	bool isSingleCharOperator(char);

	//check if character is a first character of double char operator and save the indices of these operators in the
	//list to make sure the right operators are checked when the function isDoubleCharOperator2Char() gets called
	bool isDoubleCharOperator1Char(char);

	//check if character is a second character of double char operators that have previously been selected
	bool isDoubleCharOperator2Char(char);

	bool isSpaceChar(char);
	string errorMessage();

    size_t findLine(size_t);
    size_t findRelativeIndex(size_t);
	//convert an integer into a string
	/// btw yparxoun built-in string converters ('std::to_string' for example)
	string convert(int num) {
		ostringstream stream;
		stream << num;
		return stream.str();
	}
};

#endif /* CSCANNER_CLEXER_H_ */

