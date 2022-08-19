#ifndef LITTLEJSON_HPP
#define LITTLEJSON_HPP

/**
**************************************
	** License: LGPL3 Maybe? or I'd use GNU
	** Author: Johnpaul Muoneme
	** Date: 25th July 2022
**************************************
**
    LITTLE JSON - is a simple json string parser
    that takes a streamed string json object and
    breaks it up into little JSON data of key | value
    pairs that can be interacted with.
**/
#include <vector>
#include <string>
#include <map>
#include <JsonObject.hpp>
#include <InitException.hpp>
#include <EntryEnumType.hpp>
#include <ModeEnumType.hpp>

/// LittleJSON object initialization is called
/// from the init function to enable caught errors
/// to be handled;

class LittleJson
{
public:
    LittleJson();
    void init(std::string&);
    ~LittleJson();
    
    
    LittleJson parseJson();
    std::string encodeJson();


protected:
    /// Function to Move Pointer Char
    void AdvancePointer() const;
    /// Evaluate the current Char pointed to
    void EvaluateCurrent() const;
    /// Parse a char to a respective JsonObject
    void setCharType();
    /// Append char to currentKey
    void appendKey();
    /// Append char to Value
    void appendValue();

private:
    /// Final Function to Insert Key and Value Pair
    void InsertValues();
    /// Final Function to Reset set parameters
    void ResetValues();
    /// Check for escape sequences 
    void CheckEscapes();
    /// Try to verify the current_mode
    void VerifyMode(ModeEnumType expectedMode);
    
    
    /// Track Current Key and Current Value
    char* currentChar;
    std::string currentKey;
    JsonObject currentObject;
    
    /// Integer to manage pointer movement
    int charPointer;
    
    /// Keeping track of current Mode
    ModeEnumType currentMode;
    /// Map object to Key, Value or none
	EntryEnumType currentEntry;
    /// Keep track of charType for mapping
	JsonObject charType;
    
    /// Collection of keys and values
	std::vector<std::string> keys;
	std::vector<JsonObject> values;
    
    /// Final json map and string
	std::map<std::string, JsonObject> json;
    std::string jsonString;
    
};

#endif // LITTLEJSON_HPP