pragma solidity ^0.8.10;

contract purchase{
    int public profits;
    string public storeName = 'Calebs Store';
    //Functions
    function buy(int price) public{
        profits += price;
    }
    function refund(int price) public{
        profits -= price;
    }
    function seeProfits(bool realProfits) public view returns (int) {
        if(realProfits){
            return profits;
        }
        return profits * 100;
    }


}