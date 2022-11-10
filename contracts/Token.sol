pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./Ownable.sol";

contract UToken is ERC20, Ownable {
    constructor() ERC20("UToken", "UTK") Ownable() {
        _mint(msg.sender, 1000000 * (10**uint256(decimals())));
    }

    // minting tokens
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function _mint(address account, uint256 amount) internal virtual override {
        super._mint(account, amount);
    }

    // burning tokens
    function burn(address from, uint256 amount) public onlyOwner {
        _burn(from, amount);
    }
}
