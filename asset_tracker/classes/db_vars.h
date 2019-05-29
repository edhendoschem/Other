#ifndef DB_VARS_H_INCLUDED
#define DB_VARS_H_INCLUDED
#include "errors.h"
#include <iostream>
#include <string>
#include <string_view>
#include <optional>
#include <sstream>

class Variable
{
    public:
        Variable(std::string_view inType);
        virtual ~Variable() = 0;
        virtual void setVal(std::string_view inVal) = 0;
        virtual std::string getVal() const = 0;
        virtual std::string getType() const;

    protected:
        template<typename T> 
        T unpackOptional(std::optional<T> const& inVal, std::string_view msg) const;
    
    private:
        std::string mType;
};


class TextVariable: public Variable
{
    public:
        TextVariable();
        explicit TextVariable(std::string_view inVal);
        virtual ~TextVariable() = default;
        
        virtual void setVal(std::string_view inVal) override;
        virtual std::string getVal() const override;

    private:
        std::optional<std::string> mTextVar;
};

class IntVariable: public Variable
{
    public:
        IntVariable();
        explicit IntVariable(std::string_view inVal);
        explicit IntVariable(int inVal);
        virtual ~IntVariable() = default;
        
        virtual void setVal(std::string_view inVal) override;
        virtual std::string getVal() const override;
        
    private:
        std::optional<int> mIntVar;
};

class RealVariable: public Variable
{
    public:
        RealVariable();
        explicit RealVariable(std::string_view inVal);
        explicit RealVariable(double inVal);
        virtual ~RealVariable() = default;
        
        virtual void setVal(std::string_view inVal) override;
        virtual std::string getVal() const override;
        
    private:
        std::optional<double> mRealVar;
};









#endif