#include "db_vars.h"
//Variable//
Variable::Variable(std::string_view inType): mType{inType}{}
Variable::~Variable() {}

std::string Variable::getType() const
{
    return mType;
}

template std::string Variable::unpackOptional(std::optional<std::string> const&, std::string_view) const;
template int Variable::unpackOptional(std::optional<int> const&, std::string_view) const;
template double Variable::unpackOptional(std::optional<double> const&, std::string_view) const;

template<typename T>
T Variable::unpackOptional(std::optional<T> const& inVal, std::string_view msg) const
{
    if (inVal)
    {
        return *inVal;
    } else {
        throw Error{msg, ErrorType::value_not_set};
    }
}



//TextVariable//
TextVariable::TextVariable() : Variable{"text"} {}

TextVariable::TextVariable(std::string_view inVal) : mTextVar{inVal}, Variable{"text"} {}

void TextVariable::setVal(std::string_view inVal)
{
    mTextVar = inVal;
}

std::string TextVariable::getVal() const
{
    return unpackOptional<std::string>(mTextVar, 
                                       "Error in TextVariable::getVal() -> value not set");
}


//IntVariable//
IntVariable::IntVariable() : Variable{"integer"} {}

IntVariable::IntVariable(std::string_view inVal) : mIntVar{std::stoi(inVal.data())}, Variable{"integer"}{}
IntVariable::IntVariable(int inVal) : mIntVar{inVal}, Variable{"integer"} {}

void IntVariable::setVal(std::string_view inVal)
{
    mIntVar = std::stoi(inVal.data());
}

std::string IntVariable::getVal() const
{
    return std::to_string(unpackOptional<int>(mIntVar, 
                                              "Error in IntVariable::getVal() -> value not set"));
}


//RealVariable//
RealVariable::RealVariable() : Variable{"real"} {}

RealVariable::RealVariable(std::string_view inVal) : mRealVar{std::stod(inVal.data())}, Variable{"real"}{}
RealVariable::RealVariable(double inVal) : mRealVar{inVal}, Variable{"real"} {}

void RealVariable::setVal(std::string_view inVal)
{
    mRealVar = std::stod(inVal.data());
}

std::string RealVariable::getVal() const
{
    return std::to_string(unpackOptional<double>(mRealVar, 
                                              "Error in RealVariable::getVal() -> value not set"));
}
