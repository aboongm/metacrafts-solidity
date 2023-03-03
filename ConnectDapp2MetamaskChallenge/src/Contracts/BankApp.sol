// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract BankApp {
    mapping(address => uint256) UserAccount;
    mapping(address => bool) UserExists;

    // function createAcc() public returns (bool) {
    //     require(UserExists[msg.sender] == false, "User already Exists");
    //     UserExists[msg.sender] = true;
    //     return true;
    // }

    // function accountExists() public view returns (bool) {
    //     return UserExists[msg.sender];
    // }

    // function deposit() public payable {
    //     UserAccount[msg.sender] = UserAccount[msg.sender] + msg.value;
    // }

    // function withdraw(uint256 withdrawAmount) public payable {
    //     //Account should exist & Amount to be deposited should be greater than 0
    //     require(
    //         (UserExists[msg.sender] == true) &&
    //             (withdrawAmount < UserAccount[msg.sender])
    //     );
    //     UserAccount[msg.sender] = UserAccount[msg.sender] - withdrawAmount;
    //     // Now get that amount withdrawed //Amount withdrawed must be transfered payable(msg.sender).transfer(withdrawAmount);
    // }

    // //To check Account Balance in the contaract for a given address(i.e, who calls the contract i.e, msg.sender)
    // function accountBalance() public view returns (uint256) {
    //     return UserAccount[msg.sender];
    // }

    // //To transfer Ether amount to a particular given address & update the balance of the contract
    // function transferEther(
    //     address payable reciever,
    //     uint256 transferAmount
    // ) public payable {
    //     require(
    //         (UserExists[reciever] == true) &&
    //             (UserExists[msg.sender] == true) &&
    //             (transferAmount > 0)
    //     );
    //     require(transferAmount < UserAccount[msg.sender]);
    //     UserAccount[msg.sender] = UserAccount[msg.sender] - transferAmount;
    //     UserAccount[reciever] += transferAmount;
    //     //Amount withdrawed must be transfered reciever.transfer(transferAmount);
    // }

    function accountExists(address userAddress) public view returns (bool) {
        return UserExists[userAddress];
    }

    function deposit(uint256 amount) public returns (bool) {
        require(UserExists[msg.sender] == true, "User does not exist");
        UserAccount[msg.sender] += amount;
        return true;
    }

    function withdraw(uint256 amount) public returns (bool) {
        require(UserExists[msg.sender] == true, "User does not exist");
        require(UserAccount[msg.sender] >= amount, "Insufficient balance");
        UserAccount[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        return true;
    }

    function accountBalance() public view returns (uint256) {
        require(UserExists[msg.sender] == true, "User does not exist");
        return UserAccount[msg.sender];
    }

    function transferEther(address recipient, uint256 amount) public {
        require(UserExists[msg.sender] == true, "Sender does not exist");
        require(UserExists[recipient] == true, "Recipient does not exist");
        require(amount > 0, "Amount must be greater than 0");
        require(UserAccount[msg.sender] >= amount, "Insufficient balance");

        UserAccount[msg.sender] -= amount;
        UserAccount[recipient] += amount;
    }
}
