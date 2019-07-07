pragma solidity ^0.5.8;

contract Demo {

    address private _manager;

    uint private _value;

    constructor(address manager) public {
        _manager = manager;
    }

    function manager() public view returns (address) {
        return _manager;
    }

    function getValue() public view returns (uint) {
        return _value;
    }

    function setValue(uint value) public {
        require(_manager == msg.sender);

        _value = value;
    }
}