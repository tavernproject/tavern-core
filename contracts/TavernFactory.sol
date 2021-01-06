pragma solidity >=0.4.22 <0.9.0;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract TavernFactory is Ownable{

    struct User {
        string name;
        string family;
        string telegramId;
        string url;
        uint8 age;
        bool active;
    } 

    mapping (address => User) private users;

    function addUser(   
        address _address,
        string memory _name,
        string memory _family,
        string memory _telegramId,
        string memory _url,
        uint8 _age
        ) public onlyOwner {
        User memory user = User(_name , _family , _telegramId , _url,_age , true);
        users[_address] = user;
    }
    
    function editUser(
        address _address, 
        string memory _name,
        string memory _family,
        string memory _telegramId,
        string memory _url,
        uint8 _age) public onlyOwner {
        User memory user = User(_name , _family , _telegramId,_url,_age,users[_address].active);
        users[_address] = user;
    }

    function toggleActive(address _address) external onlyOwner{
        users[_address].active = !users[_address].active;
    } 
}