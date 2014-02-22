#include "store.hpp"
#include "shelf.hpp"
#include "robot.hpp"

bool Store::empty() const
{
    return m_shelves.empty() && m_robots.empty();
}

void Store::add(shelf_up&& shelf)
{
    m_shelves.push_back(std::move(shelf));
}

std::size_t Store::nbShelves() const
{
    return m_shelves.size();
}

void Store::add(robot_up&& robot)
{
    m_robots.push_back(std::move(robot));
}

std::size_t Store::nbRobots() const
{
    return m_robots.size();
}
