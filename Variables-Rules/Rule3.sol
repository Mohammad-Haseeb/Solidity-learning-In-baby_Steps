pragma solidity 0.8.7;
contract Rule3{
    
   // Rule 3 (A)
    // variables of value type within function are stored in memory location by default ; 
function RuleA() public{
    
    int x=23; //corrent
    //int memory v=10;  //error
    //int storage y=11; //error
    
}

//   Rule 3 (B)
// variables of reference type within function are stored in memory location but we need to define explicitly ; 
function  RuleB() public{
    string memory x="Hello"; // correct
     
    //string  x="Hello"; //error
    //string storage y="Hello"; //error
}
     
}