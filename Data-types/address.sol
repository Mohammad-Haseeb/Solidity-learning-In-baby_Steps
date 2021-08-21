
pragma solidity 0.8.7;

contract Arrays{
    
    // static Arrays

// address payable myAdress =
//  0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB ;
 address  payable  x =  payable(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
 
 

function sendFunction() public payable returns(bool) {
    // In send function transaction will not return in case of faiure it'lll just return false
   bool isbool=x.send(msg.value);
   
   return isbool;
}
  
  function TransferFunction() public payable  {   
      // In send function transaction will  return in case of faiure it's generate exception

   x.transfer(msg.value);
   
  
}
    
    
        
    
}