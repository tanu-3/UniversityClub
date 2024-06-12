# University Club

This solidity program is a simple demo code for error handling and also based on handling error while creating different clubs and updation of clubs for University creating clubs ```require(),assert() and revert()```.

# Description

It is written in solidity languauge which is a programming language for developing smart contracts on the Ethereum blockchains.First there is an enum ```enum clubs {Club1,Club2,Club3}``` to denote the clubs.
Like this used struct for storing skills,joinfees and also used mapping to map different clubs to their address.
Used 3 function for reuire,revert and assert.


## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Visa.sol). Copy and paste the following code into the file:

```javascript

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract UniversityClub {
       enum club {Club1, Club2,Club3}

       struct clubs{
        string clubname;
        uint joinfees;
        uint skills;
       }
        mapping(address =>clubs) public teams;
        function  Checkrequire(address _clubAddress ,uint skills, uint amount) public returns(bool){
            require(skills >3 && amount > 600 , " Club is allowed2");
             teams[_clubAddress].skills = skills;
             teams[_clubAddress].joinfees = amount;
            return true;
        }
       function checkRevert(address _clubAddress,uint amount) public returns(bool){
           if ( amount < 600){
               revert("low fee amount");
           }
          teams[_clubAddress].joinfees = amount;
          return true;
       }

    function checkAssert(uint skills) public pure returns(string memory){
        assert(skills >3);
        return "Club is allowed";
    }
}

```
Make sure the "Compiler" option is set to "0.8.7" (or another compatible version), and then click on the "Compile MyToken.sol" button.
Select the "Visa" contract from the dropdown menu, and then click on the "Deploy" button.

 


## Authors

Tanu
[@Tanu] 

## License

This MyToken is licensed under the MIT License 


