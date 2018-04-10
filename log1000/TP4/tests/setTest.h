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

class setTest : public CppUnit::TestFixture
{
    CPPUNIT_TEST_SUITE(setTest);
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

void setTest::test1(void)
{
    vec = new Vector(10,"546");
    vec->set(9,"32");
    CPPUNIT_ASSERT(vec->get(9)=="32");
}

void setTest::test2(void)
{
    vec = new Vector(10,"546");
    vec->insert(10,"32");
    vec->set(10,"45");
    CPPUNIT_ASSERT_ASSERTION_FAIL(CPPUNIT_ASSERT(vec->get(10)=="32"));
}

void setTest::test3(void)
{
    vec = new Vector(10,"546");
    vec->insert(10,"32");
    vec->set(10,"45");
    CPPUNIT_ASSERT(vec->get(10)=="45");
}

void setTest::setUp(void)
{
    vec = new Vector();
}

void setTest::tearDown(void)
{
    delete vec;
}
