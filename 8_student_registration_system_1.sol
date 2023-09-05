// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract RegistrationSys {
    uint256 public BlockChain;
    uint256 public Artificial_Intelligence;
    uint256 public E_Commerce;
    uint256 public Arts;

    enum Department {
        Blockchain,
        Artificial_Intelligence,
        E_Commerce,
        Arts
    }

    enum Status {
        Enrolled,
        NotEnrolled,
        Graduated,
        Expelled
    }

    struct Students {
        string name;
        uint256 age;
        string Registration;
        Department dp;
        Status St;
        uint256 obtainedMarks;
    }

    mapping(uint256 => Students) _Student;
    Students[] student;

    function getRegistered(
        string memory _name,
        uint256 _age,
        string memory _Registration,
        Department _dp,
        Status _st,
        uint256 _obtainedMarks
    ) public {
        // student.push(Students("humayou",21,"5407",_dp.Blockchain,_st.Enrolled,700));
        if (_st == Status.Expelled || _st == Status.NotEnrolled) {
            _obtainedMarks = 0;
        }
        student.push(
            Students(_name, _age, _Registration, _dp, _st, _obtainedMarks)
        );
    }

    function setRollNo(uint256 index, uint256 RollNo) public {
        _Student[RollNo] = student[index];
    }

    function Update(
        uint256 _rollNo,
        string memory _name,
        uint256 _age,
        string memory _Registration,
        Department _dp,
        Status _st,
        uint256 _obtainedMarks
    ) public {
        _Student[_rollNo].name = _name;
        _Student[_rollNo].age = _age;
        _Student[_rollNo].Registration = _Registration;
        _Student[_rollNo].dp = _dp;
        _Student[_rollNo].St = _st;
        _Student[_rollNo].obtainedMarks = _obtainedMarks;
    }

    function getStd(uint256 rollNo) public view returns (Students memory) {
        return _Student[rollNo];
    }

    function Count() public {
        BlockChain = 0;
        Artificial_Intelligence = 0;
        Arts = 0;
        E_Commerce = 0;
        for (uint256 i = 0; i < student.length; i++) {
            if (student[i].dp == Department.Blockchain) {
                BlockChain += 1;
            } else if (student[i].dp == Department.Artificial_Intelligence) {
                Artificial_Intelligence += 1;
            } else if (student[i].dp == Department.Arts) {
                Arts += 1;
            } else if (student[i].dp == Department.E_Commerce) {
                E_Commerce += 1;
            }
        }
    }

    Students[] BlockchainAchiever;

    function getTopThreeBlockchainAchievers()
        public
        returns (Students[] memory)
    {
        for (uint256 i = 0; i < student.length; i++) {
            if (student[i].dp == Department.Blockchain) {
                BlockchainAchiever.push(student[i]);
            }
        }

        uint256 n = BlockchainAchiever.length;

        for (uint256 i = 0; i < n - 1; i++) {
            for (uint256 j = 0; j < n - i - 1; j++) {
                if (
                    BlockchainAchiever[j].obtainedMarks <
                    BlockchainAchiever[j + 1].obtainedMarks
                ) {
                    Students memory temp = BlockchainAchiever[j];
                    BlockchainAchiever[j] = BlockchainAchiever[j + 1];
                    BlockchainAchiever[j + 1] = temp;
                }
            }
        }

        Students[] memory topThree = new Students[](3);
        for (uint256 i = 0; i < 3 && i < n; i++) {
            topThree[i] = BlockchainAchiever[i];
        }

        return topThree;
    }
}



// Students[] public BlockchainAchiever;
// function getTopThreeBlockchainAchievers() public returns(Students[] memory) {
//        uint Counter=1;
//         for(uint i=0;i<student.length;i++){
//           if(student[i].dp==Department.Blockchain){
//               BlockchainAchiever.push(student[i]);
//           }
//            if(BlockchainAchiever.length>0){
//                 if(BlockchainAchiever[Counter].obtainedMarks>BlockchainAchiever[Counter-1].obtainedMarks){
//                     Students memory temp=BlockchainAchiever[Counter];
//                     BlockchainAchiever[Counter]=BlockchainAchiever[Counter-1];
//                     BlockchainAchiever[Counter-1]=temp;
//                     Counter++;
//                 }
//               }
//         }
//         return BlockchainAchiever;
// }

// uint[10] public myarr=[1,2,3,4,5,6,7,8,9,0];
// function swap()public{
// uint temp=myarr[0];
// myarr[0]=myarr[5];
// myarr[5]=temp;
// }
