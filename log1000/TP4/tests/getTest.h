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

using namespace CppUnit;
using namespace std;

//-----------------------------------------------------------------------------

class getTest : public CppUnit::TestFixture
{
    CPPUNIT_TEST_SUITE(getTest);
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
    
    Vector *vec;
};

// ------------------------ IMPLEMENTATION ------------------------

void getTest::test1(void)
{
    vec=new Vector(3,"123");
    CPPUNIT_ASSERT((vec->get(0))=="123");
}

void getTest::test2(void)
{
    vec =new Vector(3,"456");
    CPPUNIT_ASSERT((vec->get(2))=="456");
}
void getTest::test3(void)
{
    vec= new Vector(100,"456");
    CPPUNIT_ASSERT_ASSERTION_FAIL(CPPUNIT_ASSERT((vec->get(5))=="123"));
}

void getTest::setUp(void)
{
    vec = new Vector();
}

void getTest::tearDown(void)
{
    delete vec;
}
