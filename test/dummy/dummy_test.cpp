/*!
 * @file
 * @brief
 */

extern "C" {
}

#include "CppUTest/TestHarness.h"
#include "CppUTestExt/MockSupport.h"

TEST_GROUP(dummy){
  void setup(){}
};

TEST(dummy, dummy_test)
{
  CHECK_EQUAL(42, 41 + 1);
}
