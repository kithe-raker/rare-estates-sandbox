// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Permission {
    address public admin;
    bool public allowEveryone;

    constructor() {
        admin = msg.sender;
        allowEveryone = false;
    }

    modifier hasPermission() {
        require(
            admin == msg.sender || allowEveryone,
            "You don't have permission to access"
        );
        _;
    }

    modifier onlyAdmin() {
        require(admin == msg.sender, "You don't have permission to access");
        _;
    }

    function setPermission(bool isAllowEveryone) internal onlyAdmin() {
        allowEveryone = isAllowEveryone;
    }
}
