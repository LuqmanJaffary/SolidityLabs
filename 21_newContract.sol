// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Student {
    string private stdName;
    uint256 private stdRollNum;

    // setting values of state variables
    constructor(string memory name, uint256 rollNum) {
        stdName = name;
        stdRollNum = rollNum;
    }
}

contract StudentsList {
    // array to store students ( composition )
    Student[] public students;

    constructor() {
        Student newStudent = new Student("Burak", 20);
        students.push(newStudent);
    }
}

// contract HMC {
//     string name;
//     uint256 age;
//     string disease;

//     constructor(
//         string memory _name,
//         uint256 _age,
//         string memory _disease
//     ) {
//         name = _name;
//         age = _age;
//         disease = _disease;
//     }
// }

// contract CreatePatient{
// mapping(string=>HMC) patientDetails;
// constructor(){
//  HMC newPatient=new HMC("humayou",21,"Corona");
//  patientDetails["humayou"]=newPatient;
// }
// function fetchPatient(string memory name)public view returns(HMC){
//     return patientDetails[name];
// }
// }

// contract Patient {
//     string public name;
//     uint256 age;
//     string public disease;

//     constructor(
//         string memory _name,
//         uint256 _age,
//         string memory _disease
//     ) {
//         name = _name;
//         age = _age;
//         disease = _disease;
//     }
// }

// contract Person {
//     Patient[] public patients;

//     constructor() {
//         Patient newPatient = new Patient("Bob", 20, "Fever");
//         patients.push(newPatient);
//     }
// }
