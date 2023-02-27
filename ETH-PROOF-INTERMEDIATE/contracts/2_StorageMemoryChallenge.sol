pragma solidity ^0.8.0;

contract PersonRegistry {
    //the smart contract’s state struct variable Person is kept in storage, and data will persist
    // between function calls.
    struct Person {
        string name;
        uint age;
        address wallet;
    }

    Person[] private people;

    // the _name, _age, _wallet and newPerson variables are stored
    // temporarily and locally in memory and they will be
    // released as soon as the function call is completed
    function addPerson(string memory _name, uint _age, address _wallet) public {
        Person memory newPerson = Person(_name, _age, _wallet);
        people.push(newPerson);
    }

    // function getPersonName(uint index) public view returns (string memory) {
    //     return people[index].name;
    // }

    // function getPersonAge(uint index) public view returns (uint) {
    //     return people[index].age;
    // }

    // function getPersonWallet(uint index) public view returns (address) {
    //     return people[index].wallet;
    // }
}
