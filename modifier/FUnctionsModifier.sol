pragma solidity  0.8.7;

contract MainBody{
    string a= '12';
modifier check(int val){
   if(val == 1){
    _;
   }
}

function print(string memory a) public check(1)  view returns(string memory){
       
           
    return  a;
}
}