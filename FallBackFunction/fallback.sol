// FallBack function can receive value and data both
// but Receive function can just receive value

pragma solidity ^0.8.0;

contract Fallback{
    uint public ifallback;
    address owner;
    constructor(address _owner){
        owner = _owner;
    }
    fallback() external payable{
         payable(owner).transfer(msg.value);
        // after call to this fallback  or receive  value means ether will be transferred to this contract account 
    }

    receive () external payable{
        
    }
    
}

contract caller{
     function doSomething(address cont) public returns(bool success){
        (success,) = cont.call(abi.encodeWithSignature("doSomething()"));
    }
    function doSomething1(address cont) public payable returns(bool success){
        (success,) = cont.call{value: msg.value}(abi.encodeWithSignature("doSomething()"));
    }
    function checkBalance(address cont) public payable returns(uint val){
        return cont.balance;
    }
}