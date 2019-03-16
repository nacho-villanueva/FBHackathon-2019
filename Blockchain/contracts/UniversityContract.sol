pragma solidity ^0.5.0;

import "./UniversityProxy.sol";
import "./Main.sol";

contract UniversityContract {

  UniversityProxy public universityStorage;
  StudentProxy public studentStorage;

  constructor(UniversityProxy us, StudentProxy st) public {
    universityStorage = us;
    studentStorage = st
  }

  function addCourse(uint _universityID, string memory _courseName, uint _capacity, string memory _teacher) public returns(bool){
      return universityStorage.addCourse(_universityID, _courseName, _capacity, _teacher);
  }

  function getCourseName(uint _universityID, uint _courseID) public view returns(string memory){
      return universityStorage.getCourseName(_universityID, _courseID);
  }

  function addStudentToCourse(uint _universityID, uint _courseID, uint _studentID) public returns (bool) {
      return universityStorage.addStudentToCourse(_universityID, _courseID, _studentID);
  }

  function markCourseEnd(uint _universityID, uint _courseIS) public returns (bool){
      return universityStorage.markCourseEnd(_universityID, _courseID);
  }
}
