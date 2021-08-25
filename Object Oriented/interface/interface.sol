pragma solidity  0.8.7;

interface Human{
    function print(string memory val) external returns(string memory);
}
interface ParentB  is Human{
    function test(uint256 a) external returns (uint256);
}
contract child is ParentB{
        function print(string memory val) external override returns(string memory){
             return val;
            
        }
           function test(uint256 a) external  override returns (uint256){
                return a;
           }
        
          
        
}