// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    uint256 public StudentV1Code = 1800;
    bool public StudentV1FirstTime = true;
    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if(!StudentV1FirstTime) StudentV1Code = 123;
        StudentV1FirstTime = false;
        return StudentV1Code;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(IClassroomV2(msg.sender).isEnrolled()) return 123;
        else return 1000;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(gasleft()>=6660) return 1000;
        else return 123;
    }
}
