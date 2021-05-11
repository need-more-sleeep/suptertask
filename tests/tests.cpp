// Copyright 2021 Kornilov Nikolay nk7340558@gmail.com

#include <gtest/gtest.h>
#include "log.h"

TEST(TEST, log){
    EXPECT_EQ(log(2,4), 0.5);
    EXPECT_EQ(log(9,3), 2);
    EXPECT_EQ(log(1,54), 0);

}
