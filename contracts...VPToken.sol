// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

    contract VPToken is ERC20 {
        
        address owner;
        constructor() ERC20("VPToken", "VPT") {

            owner = msg.sender;
            mint(msg.sender, 1000000000000000000000);
        }
    
        function mint(address account, uint256 amount) public {
            require(msg.sender == owner, "You're not owner!");
            _mint(account,amount);
        }
   
    
    }