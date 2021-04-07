pragma solidity >=0.4.0 <0.7.0;

contract MyContract { 
    mapping(address => uint256) public balances;
    address payable wallet;
uint256 value;
event Purchase
(
    address indexed _buyer, 
    uint256 _amount ); 
constructor(address payable _wallet, uint256 _value) public {
    wallet = _wallet;
    value = _value;
    } 
/*function() external payable {
    buyToken();
    }*/
function buyToken() public payable { 
require(msg.value == value); 
balances[msg.sender] += 1; 
wallet.transfer(msg.value);
emit Purchase(msg.sender, 1); 
    
}
}