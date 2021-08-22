# Solidity-learning-In-baby_Steps
 I try to explain each and every rule of solidity according to 0.8.7 version.
 ## Require Statement
 ###  require(ownerZombieCount[msg.sender] == 0);
 you can use it in function to check specific criteria to meet some kind of condition in case of false result execution of function will stop
 
 # Multiple Assignment
 ```
 function multipleReturns() internal returns(uint a, uint b, uint c) {
  return (1, 2, 3);
}

function processMultipleReturns() external {
  uint a;
  uint b;
  uint c;
  // This is how you do multiple assignment:
  (a, b, c) = multipleReturns();
}
```
 
