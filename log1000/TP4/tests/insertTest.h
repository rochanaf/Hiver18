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

class insertTest : public CppUnit::TestFixture
{
    CPPUNIT_TEST_SUITE(insertTest);
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

void insertTest::test1(void)
{
    vec=new Vector(3,"123");
    vec->insert(3,"7");
    vec->insert(4,"123");
    CPPUNIT_ASSERT_ASSERTION_FAIL(CPPUNIT_ASSERT(vec->get(4)=="7"));
}

void insertTest::test2(void)
{
    vec= new Vector(5,"123");
    vec->insert(5,"3");
    CPPUNIT_ASSERT(vec->get(1)=="123");
}

void insertTest::test3(void)
{
    vec= new Vector(5,"123");
    vec->insert(5,"3");
    CPPUNIT_ASSERT(vec->get(5)=="3");
}

void insertTest::setUp(void)
{
    vec = new Vector();
}

void insertTest::tearDown(void)
{
    delete vec;
}
