#include "InitException.hpp"

const char* InitException::what(){
    return message.c_str();
}