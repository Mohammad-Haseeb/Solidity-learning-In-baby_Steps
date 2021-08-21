pragma  solidity 0.8.7;

contract Rule8{
      
    //   Rule 8  
    // if refernce type variable store in memory are alway create changin in both if modify value of one of them.

    //  you can chekcin function below;
    
    function add() public returns(int){ 
        int[4]  memory array1=[int(1),2,3,5]; //fixed size array
        int[4]  memory array2=[int(10),4,7,1];
        array1=array2;
        array1[1]=99;
        array2[1]=0;
           secondftn(array1);
         return array1[1];
        //  uint[] memory x = [uint(1), 3, 4];
        
        
    }
    
    
    function secondftn(int[4] memory x) public{
        int[4] memory y=x;
              y[1]=100;      //      it will also modify orignal array
        
    }
}
    
    