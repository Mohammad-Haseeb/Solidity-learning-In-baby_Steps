// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract Rule2{
    
    int256  public val=-345;
    
    // variable decleared as function parameter and return parameter are always store in memory  data location and 
    // we don't  need to  declear memeory with value type like int, uint.
    
    function addition(int x, int b)public returns(int ){
        
        return x+b;
    }
    
    // we need to declear explicitly memory location with reference type  
    
    function addition(int x, int b,string memory name)public returns(int add, string memory c ){
        // c=name;
        // add = x+b;
        // we can return  variable  as like above statment with out return statement or like below statement with variable 
        return (x+b,name);
        
    }
    
}