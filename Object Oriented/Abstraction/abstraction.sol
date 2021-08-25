pragma solidity 0.8.7;

abstract contract Human{
    function age() public virtual returns(int);
    function Name() public  returns(string memory){
        return "Ali";
        
    }
      function School() public  virtual returns(string memory){
        return "Ali";
        
    }
}

contract Man is Human{
   
    function age() public override returns(int){
        return 4;
        
    }
      function School() public override  returns(string memory){
        return "Ali";
        
    }
    
    
}

contract Main{
//   Human ali;

    function createFunction() public returns(string memory,int,string memory){
        Human ali=new Man();
         return(ali.Name(),ali.age(),ali.School());
        
    }
}