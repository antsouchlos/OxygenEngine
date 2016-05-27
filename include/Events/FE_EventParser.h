#ifndef FE_EVENT_PARSER_H_
#define FE_EVENT_PARSER_H_

#include "FE_Libs.h"
//#include "CScanner_CLexer.h"

enum FE_EVENT_PAIR_TYPE{
	FE_NO_COMBO = 0,
	FE_AND_COMBO = 1,
	FE_OR_COMBO = 2
};

/// class intended to store a pair (or no pair) of events
/// equivalent to CNode* for the parser
class FE_EventPair{
    friend class FE_EventParser;
    friend class FE_EventHandler;
public:
	FE_EventPair();
	~FE_EventPair();

protected:
	FE_EVENT_PAIR_TYPE pair_type;
	FE_EventPair* event0;
	FE_EventPair* event1;
	string name;
};

///FE_EventParser, only parser is needed
class FE_EventParser{
public:
    FE_EventParser();
    ~FE_EventParser();

    FE_EventPair parse(string);
    FE_EventPair* parseComparison(FE_EventPair&);

protected:
    string info;
};

//asdf
#endif
