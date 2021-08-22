pragma solidity 0.8.7;


contract Human{
    int age ;
    event messageCheck(string );
    constructor(int _age) public{
        age=_age;
       emit  messageCheck("Parent Constructor");
    }
}

contract Student is Human{
    
    // by default compiler provide this constructor with zero parameter
    //  constructor() Human() public{ }
    
    
    
     constructor(int _age) Human(_age) public{
        emit  messageCheck("Child Constructor");
         
     }
     function getAge() public returns(int){
         return age;
     }
    
}

contract Main{
    
    function createObject() public returns(int){
        Student s=new Student(12);
        return s.getAge();
        
    }
}