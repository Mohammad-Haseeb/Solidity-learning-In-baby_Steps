
pragma solidity 0.8.7;

contract Arrays{
    
//  mapping can't be decleard in function but we can refer to state variable

mapping (int=>string) user;

function addUser(int id, string memory name) public{
     
    // you can check how to refer in below statement you can't store in memory
    but according to rule it's refering changein one varaible will reflect in toher
    mapping (int => string) storage infoUser=user;
    infoUser[id]=name; 
    
}


 function checkUserName(int id) public returns(string memory){
    //  it will same that we added through infoUser variable in above function
     return user[id];
 }
    
        
    
}