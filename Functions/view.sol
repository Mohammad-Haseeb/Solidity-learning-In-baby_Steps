pragma solidity  0.8.7;

contract MainBody{
    string a= '12';

// we can't change states in view function

function print() public view returns(string memory){
        //   a='12'  error
           
    return  a;
}
}