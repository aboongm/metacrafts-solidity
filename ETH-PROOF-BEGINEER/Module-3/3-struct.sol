// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract Structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("Toyota", 2020, msg.sender);
        Car memory lambo = Car({model: "Lambo", year: 2021, owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2021;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("BMW", 2021, msg.sender));

        // Car memory car = cars[0]; // to modify the car, we need to change memory to storage
        Car storage car = cars[0]; // to modify the car, we need to change memory to storage
            car.model = "Toyota Corolla";
            car.year = 2022;
            car.owner = msg.sender;
        delete car.owner;

        delete cars[1];
    }
}