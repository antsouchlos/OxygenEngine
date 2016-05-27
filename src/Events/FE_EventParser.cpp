#include "FE_Event.h" //IMPORTANT

FE_EventPair::FE_EventPair(){
    event0 = nullptr;
    event1 = nullptr;
}

FE_EventPair::~FE_EventPair(){}


FE_EventParser::FE_EventParser(){}
FE_EventParser::~FE_EventParser(){}

FE_EventPair FE_EventParser::parse(string str){

    this->info = str;
    FE_EventPair pair_handle = FE_EventPair();
    pair_handle.event0 = this->parseComparison(pair_handle); //INCOMPLETE
    return pair_handle;

}

FE_EventPair* FE_EventParser::parseComparison(FE_EventPair& a_pair){
    return nullptr;

}
