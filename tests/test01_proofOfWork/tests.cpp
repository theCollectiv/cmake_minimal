// tests.cpp
#include "./../../include/addition/addition.hpp"
//#include "whattotest.cpp"
#include <gtest/gtest.h>
#include <gtest/internal/gtest-internal.h>

bool foo(){
    return true;
}


// TEST(Simpletest, trueEqualsTrue) {
//     EXPECT_TRUE(foo());
//     EXPECT_FALSE(foo());
//     EXPECT_EQ(true, foo());
//     ASSERT_FALSE(foo());
//     EXPECT_EQ(false, foo());
// }
//
TEST(SquareRootTest, PositiveNos) {
    ASSERT_EQ(18.0, add(1,17));
    EXPECT_EQ(6, add(1,6));
    ASSERT_EQ(25.4, add(55, -1));
    ASSERT_EQ(0, add(-4, 4));
}


int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
