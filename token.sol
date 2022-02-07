pragma solidity ^0.8.10;

contract token{
    // Field
    uint public total = 0;

    //Functions
    function viewTotal() public view returns (uint){
        return total;

    }
    function sub() public{
        total-=1;
    }
    function add(uint userInput) public {
        total += userInput;
    }
}