#include "LittleJson.hpp"

/**
********************************
    Add this to another file.
********************************
#if defined NDEBUG
    #define TRACE( format, ... )
#else
    #define TRACE( format, ... )   printf( "%s::%s(%d)" format, __FILE__, __FUNCTION__,  __LINE__, __VA_ARGS__ )
#endif
**/

LittleJson::LittleJson(){}//ctor

LittleJson::~LittleJson()
{
    //dtor
    currentChar = nullptr;
}

void LittleJson::init(std::string& jsonInitString){
    /// Set all necessary class parameters to default
    ResetValues();

    /// Set the internal class String to this.
    jsonString = jsonInitString;

    /// Start the token retrieval process
    try{
        AdvancePointer();
    } catch (InitException e){
        //  Trace Log
    }

}

/// This function returns a LittleJson object
/// containing the parsed keys and values
LittleJson LittleJson::parseJson(){
    return LittleJson();
}

std::string LittleJson::encodeJson(){
    return "-";
}

void LittleJson::AdvancePointer() const{

}