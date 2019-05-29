#include "errors.h"

Error::Error(): mErrorMsg{"Undefined Error"}, mErrorType {ErrorType::unknown_error}{}
Error::Error(std::string_view inErrorMsg, ErrorType const& inErrorType)
                    :mErrorMsg {inErrorMsg}, 
                     mErrorType {inErrorType} 
                     {}
                     
char const* Error::what() const noexcept
{
    return mErrorMsg.data();
}

ErrorType Error::getErrorType() const noexcept
{
    return mErrorType;
}

std::string const& Error::getErrorMsg() const noexcept
{
    return mErrorMsg;
}

void Error::setErrorMsg(std::string_view inErrorMsg)
{
    mErrorMsg = inErrorMsg;
}

void Error::setErrorType(ErrorType const& inErrorType)
{
    mErrorType = inErrorType;
}

Error& Error::operator = (Error const& rhs) noexcept
{
    mErrorMsg = rhs.getErrorMsg();
    mErrorType = rhs.getErrorType();
    return *this;
}

     