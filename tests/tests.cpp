// Copyright 2021 Kornilov Nikolay nk7340558@gmail.com

#include <gtest/gtest.h>
#include "div.h"

TEST(TEST, DIV){
    EXPECT_EQ(_div(1,4), 0.25);
    EXPECT_EQ(_div(9,3), 3);
    EXPECT_EQ(_div(0,100), 0);
}
