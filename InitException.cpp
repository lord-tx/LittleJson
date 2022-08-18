#include "InitException.hpp"

const char* InitException::what(){
    return message;
}