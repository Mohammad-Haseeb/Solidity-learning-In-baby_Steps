pragma solidity 0.8.7;

contract Arrays{
    
    // static Arrays
    int[] x=[int(12),4,1];
    int[3] fixedArray=[int(1),2,4]; //fixed size array
    int[] fixedArray2=new int[](4); // dynamic array
    int[2] age;// fixed arrray
    function add() public returns(int){
        int[] storage internalArray=x;
        age[0]=1;
        age[1]=12;
       
        x.push(12);
        fixedArray2.push(11);
        //  fixedArray.push(int(56); // can't push because array is fixed
        return fixedArray2[4];
        
    }
}