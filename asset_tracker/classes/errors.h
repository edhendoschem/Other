#ifndef ERRORS_H_INCLUDED
#define ERRORS_H_INCLUDED
#include <exception>
#include <string_view>
#include <string>

//Error types
enum class ErrorType {
    unknown_error,
    test_error,
    value_not_set,
};
    
//Generic wrapper to create Errors
class Error final : public std::exception
{
    public:
        explicit Error();
        explicit Error(std::string_view inErrorMsg, ErrorType const& error);
        
        char const* what() const noexcept;
    
        Error& operator = (Error const& rhs) noexcept;
        ErrorType getErrorType() const noexcept;
        std::string const& getErrorMsg() const noexcept;
        void setErrorMsg(std::string_view inErrorMsg);
        void setErrorType(ErrorType const& inErrorType);
        
    private:
        std::string mErrorMsg;
        ErrorType mErrorType;
};

#endif