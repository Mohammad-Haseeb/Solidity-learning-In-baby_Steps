// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract GlobalVariables{
     
     
     function checkAddressOfMinerOfBlock() public returns(address){
         return block.coinbase;
     }
     
      function checkDifficultyLevelOfBlock() public returns(uint){
         return block.difficulty;
     }
     
        //   ****Other GLobal Variable are below you can check it out**************
    

//     block.gaslimit (uint)  =  Gas limit for current block.

// block.number (uint)  = Block number in sequence.

// block.timestamp (uint) = Time when block was created.

// msg.data (bytes) = Information about the function and its
// parameters that created the transaction.

// msg.gas (uint) = Gas unused after execution of transaction.

// msg.sender (address) = Address of caller who invoked the
// function.

// msg.sig (bytes4) = Function identifier using first four bytes
// after hashing function signature.

// msg.value (uint) = Amount of wei sent along with
// transaction.

// now (uint) = Current time.

// tx.gasprice (uint) = The gas price caller is ready to pay for
// each gas unit.

// tx.origin (address) = The first caller of the transaction.

// block.blockhash(uint blockNumber)
// returns (bytes32)  = Hash of the block containing the
// transaction
    
    
    
}

