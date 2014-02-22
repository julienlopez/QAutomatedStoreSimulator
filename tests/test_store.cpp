#include <gtest/gtest.h>

#include <store.hpp>
#include <shelf.hpp>
#include <robot.hpp>
#include <utils/make_unique.hpp>

struct TestStore : public ::testing::Test
{
    Store store;
};

TEST_F(TestStore, EmptyOnCreation)
{
    ASSERT_TRUE(store.empty());
}

struct TestStoreWithOneShelf : public TestStore
{
    virtual void SetUp() override
    {
        store.add(utils::make_unique<Shelf>());
    }
};

TEST_F(TestStoreWithOneShelf, NotEmptyAfterAddingAShelf)
{
    ASSERT_FALSE(store.empty());
}

TEST_F(TestStoreWithOneShelf, NumberOfShelvesAtOneAfterAddingAShelf)
{
    ASSERT_EQ(1, store.nbShelves());
}

struct TestStoreWithOneRobot : public TestStore
{
    virtual void SetUp() override
    {
        store.add(utils::make_unique<Robot>());
    }
};

TEST_F(TestStoreWithOneRobot, NotEmptyAfterAddingARobot)
{
    ASSERT_FALSE(store.empty());
}

TEST_F(TestStoreWithOneRobot, NumberOfRobotsAtOneAfterAddingARobot)
{
    ASSERT_EQ(1, store.nbRobots());
}
