// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract studentReg {
    enum Department {
        Artificial_Intelligence,
        Blockchain,
        E_Commerce,
        Arts
    }
    enum Status {
        Enrolled,
        NotEnrolled,
        Graduated,
        Expelled
    }

    struct Student {
        string name;
        uint256 age;
        uint256 registrationDate;
        Department dept;
        Status _status;
        uint256 ObtainedMarks;
    }

    mapping(uint256 => Student) studentManagment;
    mapping(Department => uint256) counter;
    uint256 _roll = 1;

    function register(
        string memory name,
        uint256 age,
        uint256 registrationDate,
        Department dept,
        Status _status,
        uint256 ObtainedMarks
    ) public {
        studentManagment[_roll] = Student(
            name,
            age,
            registrationDate,
            dept,
            _status,
            ObtainedMarks
        );
        _roll++;

        if (dept == Department.Artificial_Intelligence) {
            counter[Department.Artificial_Intelligence]++;
        } else if (dept == Department.Blockchain) {
            counter[Department.Blockchain]++;
        } else if (dept == Department.E_Commerce) {
            counter[Department.E_Commerce]++;
        } else if (dept == Department.Arts) {
            counter[Department.Arts]++;
        }
    }

    function update(
        uint256 roll,
        string memory name,
        uint256 age,
        uint256 registrationDate,
        Department dept,
        Status _status,
        uint256 ObtainedMarks
    ) public returns (Student memory) {
        studentManagment[roll] = Student(
            name,
            age,
            registrationDate,
            dept,
            _status,
            ObtainedMarks
        );
        return studentManagment[roll];
    }

    function countOfStudents()
        public
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256
        )
    {
        return (
            (counter[Department.Artificial_Intelligence]),
            (counter[Department.Blockchain]),
            (counter[Department.E_Commerce]),
            (counter[Department.Arts])
        );
    }

    function TopAchievers()
        public
        view
        returns (
            Student memory s1,
            Student memory s2,
            Student memory s3
        )
    {
        for (uint256 i = 1; i <= _roll; i++) {
            if (studentManagment[i].dept == Department.Blockchain) {
                if (studentManagment[i]._status == Status.Enrolled) {
                    if (studentManagment[i].ObtainedMarks > s1.ObtainedMarks) {
                        s3 = s2;
                        s2 = s1;
                        s1 = studentManagment[i];
                    } else if (
                        studentManagment[i].ObtainedMarks > s2.ObtainedMarks
                    ) {
                        s3 = s2;
                        s2 = studentManagment[i];
                    } else if (
                        studentManagment[i].ObtainedMarks > s3.ObtainedMarks
                    ) {
                        s3 = studentManagment[i];
                    }
                }
            }
        }
    }
}
