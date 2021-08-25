pragma solidity 0.8.7;


contract A{
    function print() external  virtual  returns (string memory){
         return  "Hello";
    }
    
    function GrandFather() public  virtual returns(int){
        return 12;
    }
    
}

contract B is A{
    function print() public virtual  override returns (string memory){
         return  "Hello";
    }
    
}
contract C is A{
    function print() public  virtual override returns (string memory){
         return  "Hello";
    }
    
}

contract D is B, C{
     function print() public  override(B,C) returns (string memory){
         return  "Hello";
    }
   
}


// // SPDX-License-Identifier: GPL-3.0
// pragma solidity >=0.4.0 <0.9.0;

// contract X {}
// contract A is X {}
// // This will not compile
// contract C is A, X {}


