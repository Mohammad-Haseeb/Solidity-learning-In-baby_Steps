pragma solidity 0.8.7;

contract Human {
    uint public number;
    
    
    event check(string);
    function add() external returns(uint) {
     
        return  12 ;
    }
 function addition(uint val) external returns(uint) {
     emit check("String  check");
     number+=val;
     return number;
 }

    
}

// we use call method with adress to call function
// if we don't know about signature of fucntion  

contract Implementation{
    
    function callFunction(address Human) public returns(bytes memory data,bool isbool){
             bytes memory method =  abi.encodeWithSignature( "add()");
                 (isbool, data)=Human.call(method);
        
    }
    
    
    function callFunctionWithArguments(address Human ,uint a)public returns (bytes memory data , bool isbool){
        
        // >>> first thing first Important note you have define size of argument in signature like we define below
        
        // When we use call method like we use below it'll change state of Human contract in which we have defined function
        bytes memory method = abi.encodeWithSignature("addition(uint256)",a);
        (isbool,data)= Human.call(method);
    }
    
    function  callFunctionWithDelegateCall(address Human ,uint a)public returns (bytes memory data , bool isbool){
        //  delegatecall will not change state contract in which
        // function is defined in our case it'll not affect state of human 
       bytes memory method = abi.encodeWithSignature("addition(uint256)",a);
       (isbool,data)=Human.delegatecall(method);
        
    }
    
    
    
}