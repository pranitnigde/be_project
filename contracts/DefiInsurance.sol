pragma solidity >=0.4.16 <0.8.0;

contract DefiInsurance {

    uint256 public totalUser = 0;
    uint256 public totalApplication = 0;
    uint256 public totalVerifiedApplications = 0;

    mapping(uint => User) public user;
    mapping(uint => User) public applications;
    mapping(uint => User) public VerificatedList;

    struct User {
        uint _id;
        string _firstName;
        string _lastName;
        uint _status;
    }

    function addUser(string memory _firstName, string memory _lastName) public {
        totalUser ++;
        user[totalUser] = User(totalUser, _firstName, _lastName, 0);
    }
    
    function submitApplication(uint256 _index) public {
        totalApplication ++;
        applications[totalApplication] = user[_index];
    }

    function verifyApplication(uint256 _index, uint256 _value) public {
        user[_index]._status = _value;
        if(_value == 2) {
            totalVerifiedApplications ++;
            VerificatedList[totalVerifiedApplications] = applications[_index];
        }
    }

}