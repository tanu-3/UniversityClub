
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
