# Solidity-learning-In-baby_Steps
![Image of Solidity logo](https://res.cloudinary.com/practicaldev/image/fetch/s--Rxmub8vz--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/5jd65usaioipnkv5xs5a.png)
 ##### I tried to explain all common concepts and rules of solidity according to 0.8.7 version.
 ## Require Statement
 ```
 require(ownerZombieCount[msg.sender] == 0); 
 ```
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

//  Or if we only cared about one of the values:
function getLastReturnValue() external {
  uint c;
  // We can just leave the other fields blank:
  (,,c) = multipleReturns();
}


```
# Function
### Function  are internal by default,it means it can be only access from derived contract or contract in which we defined them.But it can be internal ,  external, public, private  

