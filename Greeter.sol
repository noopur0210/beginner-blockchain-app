pragma solidity ^0.8.13;     //defining the version of solidity

//code block consists of the keyword 'contract' and the name of the smart contract
//this is where we'll write our smart contract
//this smart contract gives us a greeting based on some conditions
contract Greeter{

    // initialisation of a string variable
    string greeting = "Hello, World!";     //whenever this greeting is executed, it gets stored on the blockchain (called a state variable)

    //creating a function to read the variable
    //Syntax: function [function-name] [accessibility specifier] view(in case of getter functions) returns([return data type] memory) {}
    function greet() public view returns(string memory){           //this is a 'getter' function, i.e., this fuction doesn't change the blockchain, just reads some values and returns them
        return greeting;
    }

    function setGreeting(string memory _greeting) public returns(bool){     //this is a 'setter' function, which takes some arguments and makes changes to the blockchain
        greeting = _greeting;
        return true;
    }

}