#include "tests.h"

void testTextVariable()
{
    TextVariable defCtor{""};
    std::cout<<defCtor.getVal()<<'\n';
    defCtor.setVal("char const* test");
    std::cout<<defCtor.getVal()<<'\n';
    std::string strTest {"String test"};
    defCtor.setVal(strTest);
    std::cout<<defCtor.getVal()<<'\n';
    std::cout<<defCtor.getType()<<'\n';
    
    TextVariable nonDefCtor {"Some text"};
    std::cout<<nonDefCtor.getVal()<<'\n';
    std::cout<<nonDefCtor.getType()<<'\n';
}

void testIntVariable()
{
    
    IntVariable defCtor{};
    std::cout<<defCtor.getType()<<'\n';
    defCtor.setVal("33");
    std::cout<<defCtor.getVal()<<'\n';
    
    IntVariable nonDefCtor{"11"};
    std::cout<<nonDefCtor.getVal()<<'\n';
    std::cout<<nonDefCtor.getType()<<'\n';
    nonDefCtor.setVal("101");
    std::cout<<nonDefCtor.getVal()<<'\n';
}

void testErrors()
{
    try {
        throw Error("Some text in the error", ErrorType::unknown_error);
    } catch (Error& e) {
        std::cerr<<e.what()<<'\n';
        Error new_err {"New text", ErrorType::test_error};
        new_err.setErrorMsg(new_err.getErrorMsg() + " " + e.what());
        throw(new_err);
    }
    
}