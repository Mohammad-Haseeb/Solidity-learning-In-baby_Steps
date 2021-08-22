pragma solidity 0.8.7;


contract student{
        int age;
        
        constructor(int _age) public{
             setAge(_age);
        }
        function setAge(int _age) public{
             age=_age;
        }  
        function getAge() public returns(int){
             return age;
        }
           
}

contract Main{
    address AliAddress;
    function createObject() public{
        student stu=new student(23);
        // every time when we'll call with new key to create object it'll deploy new contract blockchain 
        // and address of every contract will be differenet
        // stu.setAge(12);
        AliAddress = address(stu); //we're accessig address of cortact the we deployed above
        
    }
    
    function AccessValue() public returns(int){
              student s = student(AliAddress); // we're passing address without new keyword to accesss xontract with particular address
              return s.getAge();
    }
    
}