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

#include "../Vector.h"
#include "../Stack.h"

using namespace CppUnit;
using namespace std;

//-----------------------------------------------------------------------------

class pushTest : public CppUnit::TestFixture
{
    CPPUNIT_TEST_SUITE(pushTest);
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

void pushTest::test1(void)
{
    stack=new Stack();
    stack->push("5");
    CPPUNIT_ASSERT(stack->top()=="5");
}

void pushTest::test2(void)
{
    stack->push("5");
    stack->push("7");
    CPPUNIT_ASSERT(stack->top()=="7");
}

void pushTest::test3(void)
{
    stack->push("10");
    stack->push("9");
    stack->pop();
    CPPUNIT_ASSERT_ASSERTION_FAIL(CPPUNIT_ASSERT(stack->top()=="9"));
}

void pushTest::setUp(void)
{
    stack = new Stack();
}

void pushTest::tearDown(void)
{
    delete stack;
}
