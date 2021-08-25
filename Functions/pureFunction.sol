pragma solidity  0.8.7;

// this function can't change and access  state of contract
contract Main{
function print(string memory value) public pure returns(string memory){
    retrun value;
}

}