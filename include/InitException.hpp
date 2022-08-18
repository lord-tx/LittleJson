#ifndef INITEXCEPTION_H
#define INITEXCEPTION_H

#include <exception>

/// This is the exception thrown when a JSON object is not properly
/// initialized. It may be due to various factors including dirty or
/// wrong JSON string stream, lack of system resources, etc.
class InitException: public std::exception{
    private:
        char * message;

    public:
        InitException(char * msg) : message(msg) {}

        /// Exception Description
        const char* what();
};

#endif // INITEXCEPTION_H