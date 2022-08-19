
#ifndef JSONOBJECTTYPE_H_INCLUDED
#define JSONOBJECTTYPE_H_INCLUDED

/// This enum describes the types
/// available to the JsonObjectType
/// system.

enum JsonObjectType{
    String,
    Number,
    List,
    Object,
    Separator,
    Assignment,
};

/// Observable Tokens
static const char QUOTE_OPEN        = '\"';
static const char CURLY_BRACE_OPEN  = '{';
static const char CURLY_BRACE_CLOSE = '}';
static const char LIST_OPEN         = '[';
static const char LIST_CLOSE        = ']';
static const char SEPARATOR         = ',';
static const char ASSIGNMENT        = ':';


#endif // JSONOBJECTTYPE_H_INCLUDED