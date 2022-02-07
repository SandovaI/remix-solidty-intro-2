pragma solidity ^0.8.10;

contract purchase{
    int public profits;
    string public storeName = 'Calebs Store';
    int[] public orders;

    //Functions
    // a
    function buy(int price) public{
        orders.push(price);
        profits += price;
    }
    function refund(uint orderNumber) public{
        profits -= orders[orderNumber];
    }
    function seeProfits(bool realProfits) public view returns (int) {
        if(realProfits){
            return profits;
        }
        return profits * 100;
    }


}