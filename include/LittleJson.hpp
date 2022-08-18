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

class LittleJson
{
    public:
        LittleJson();
        /// LittleJSON object initialization is called
        /// from the init function to enable caught errors
        /// to be handled;
        void init(std::string&);
        ~LittleJson();

        LittleJson parseJson();
		std::string encodeJson();


    protected:
        /// Function to retrieve the next available token
        /// or return a closing token or an error;
        JsonObject getNextToken();

    private:
        /// Init Verification
        bool initCalled = false;

        /// Elements to track the token pointer
        int current_location;
        char* currentChar;
        char* previousChar;
        char* nextChar;
        /// Token for evaluation
        char* lastToken;

        /// JSON String object copied into object
        /// TODO: Transform this to Heap if necessary.
        std::string jsonString;

        /// Functions to get JsonObject
        JsonObject operator[](std::string& value);

        /// JSON keys and values contained for easy retrieval.
        std::vector<std::string> keys;
		std::vector<JsonObject> values;

		/// Main element JSON mapping
		std::map<std::string, JsonObject> json;

		void clearLastToken();
		void setNextChar(char& nextC);
};

#endif // LITTLEJSON_HPP