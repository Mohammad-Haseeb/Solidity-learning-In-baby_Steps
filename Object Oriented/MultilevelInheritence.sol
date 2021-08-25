pragma solidity 0.8.7;

contract Human{
    function print() public virtual  returns (string memory){
         return  "Hello";
    }
    
    function GrandFather() public  virtual returns(int){
        return 12;
    }
    
}

contract Student is Human{
    function print() public virtual override returns (string memory){
         return  "Hello";
    }
    
}
contract Ali is Student{
     function print() public override returns (string memory){
         return  "Hello Ali";
    }
     function GrandFather() public override returns(int){
        return 13;
    }
}

contract Main{
    Student s;
    event printEvent(string,int);
    function MainFunction()  public returns(string memory) {
        s= new Student();
        Ali ali=new Ali();
        emit printEvent(ali.print(),ali.GrandFather());
        return s.print();
    }
    
}
