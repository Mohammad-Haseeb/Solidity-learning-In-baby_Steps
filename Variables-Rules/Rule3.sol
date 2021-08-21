pragma solidity 0.8.7;
contract Rule3{
    
   // Rule 3 (A)
    // variables of value type within function are stored in memory location by default ; 
    int public v=12;
function RuleA() public returns(int){
    
    int x=v; //corrent it's coping value
   
    return(x);
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

   //Rule 3 (C)
   //reference types decleared within function can be store in storage by referencing state variables
   string public Name="XYZ";
function RuleC() public returns(string memory){
    string storage FatherName=Name;
    Name="Hello"; 
    Name="Changing";
    // Important Note We will refer storage refernce types in local storage refernce type then 
    // It'll refer only refernce changing one value will change other like in that function
    
    
    
    return(FatherName);
    
}

//Rule 3 (D)
// variable  of  value type  in function can't be sotre in storage location

function RuleD() public{
    // int storage x=12;  //error
    
}




     
}