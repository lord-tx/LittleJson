#ifndef JSONOBJECT_HPP
#define JSONOBJECT_HPP

#include <vector>
#include <string>
#include "JsonObjectType.hpp"

class JsonObject
{
    public:
        JsonObject();
        virtual ~JsonObject();
        
        JsonObjectType getType() const;

    protected:
        JsonObjectType type;
        
        /// These values are for storing the current type
        /// for the JsonObject, as reusing a single union
        /// could create unforeseen issues.
        
        std::vector<JsonObject> listObjects;
        std::string stringValue;
        double numberValue;

    private:
        bool verifyType(JsonObjectType toVerify);
};

#endif // JSONOBJECT_HPP