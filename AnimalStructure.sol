pragma solidity ^0.8.10;

contract AnimalFactory{
    string public constant FACTORY_NAME = 'Animal Farm';
    int public counter = 0;
    struct Animal{
        string species;
        string color;
        string name;
        int age;
    }
    Animal[] public animals;
    function createAnimal() public{
        animals.push(Animal('Tiger', 'Orange', 'jeff', 2));
        counter+=1;
    }
    function populate(int i) public{
        for (int j = 0; j < i; j++){
            createAnimal();
        }
    }
    function viewFactory() public view returns(Animal[] memory){
        return animals;
    }
}