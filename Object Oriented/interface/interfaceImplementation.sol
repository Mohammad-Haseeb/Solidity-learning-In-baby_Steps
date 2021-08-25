pragma solidity  0.8.7;
import "./interface.sol";



contract Ali{
    function MainObjectCreate() public  returns(string memory,uint256){
         ParentB a =new child();
         return(a.print("Hello Child"),a.test(34));
         
         
        
    }
}