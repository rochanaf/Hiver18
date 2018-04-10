#include <string>
#include <list>
#include <cppunit/TestCase.h>
#include <cppunit/TestFixture.h>
#include <cppunit/ui/text/TextTestRunner.h>
#include <cppunit/extensions/HelperMacros.h>
#include <cppunit/extensions/TestFactoryRegistry.h>
#include <cppunit/TestResult.h>
#include <cppunit/TestResultCollector.h>
#include <cppunit/TestRunner.h>
#include <cppunit/BriefTestProgressListener.h>
#include <cppunit/CompilerOutputter.h>
#include <cppunit/XmlOutputter.h>
#include <netinet/in.h>

#include "../Stack.h"

using namespace CppUnit;
using namespace std;

//-----------------------------------------------------------------------------

class popTest : public CppUnit::TestFixture
{
    CPPUNIT_TEST_SUITE(popTest);
    CPPUNIT_TEST(test1);
    CPPUNIT_TEST(test2);
    CPPUNIT_TEST(test3);
    CPPUNIT_TEST_SUITE_END();
    
public:
    void setUp(void);
    void tearDown(void);
    
protected:
    void test1(void);
    void test2(void);
    void test3(void);
    
private:
    
    Stack *stack;
};

// ------------------------ IMPLEMENTATION ------------------------

void popTest::test1(void)
{
    stack=new Stack();
    stack->push("2");
    stack->push("3");
    stack->pop();
    CPPUNIT_ASSERT(stack->pop()=="2");
}

void popTest::test2(void)
{
    stack=new Stack();
    stack->push("2");
    stack->push("3");
    CPPUNIT_ASSERT_ASSERTION_FAIL(CPPUNIT_ASSERT(stack->pop()=="2"));
}

void popTest::test3(void)
{
    stack=new Stack();
    stack->push("8");
    stack->push("9");
    stack->pop();
    stack->push("9");
    CPPUNIT_ASSERT(stack->pop()=="9");
}

void popTest::setUp(void)
{
    stack = new Stack();
}

void popTest::tearDown(void)
{
    delete stack;
}
