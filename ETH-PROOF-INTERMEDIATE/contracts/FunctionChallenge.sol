pragma solidity >=0.7.0 <0.9.0; //solidity version

contract FunctionChallenge {
    uint public someValue;

    function setValue(uint _someValue) public {
        someValue = _someValue;
    }

    function getValue() public view returns (uint) {
        return someValue;
    }

    function addNumbers(uint _a, uint _b) public pure returns (uint) {
        return _a + _b;
    }

    function payMe() public payable {
        emit Paid(msg.sender, msg.value);
    }

    event Paid(address indexed _from, uint _amount);
}