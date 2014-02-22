#ifndef STORE_HPP
#define STORE_HPP

#include <memory>
#include <vector>

class Shelf;
class Robot;

class Store
{
public:
    using shelf_up = std::unique_ptr<Shelf>;
    using robot_up = std::unique_ptr<Robot>;

    Store() = default;

    bool empty() const;

    void add(shelf_up&& shelf);

    std::size_t nbShelves() const;

    void add(robot_up&& robot);

    std::size_t nbRobots() const;

private:
    using shelves_container = std::vector<shelf_up>;
    using robots_container = std::vector<robot_up>;

    shelves_container m_shelves;
    robots_container m_robots;
};

#endif // STORE_HPP
