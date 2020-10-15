pragma solidity ^0.5.8;

import "./Context.sol";
import "./ITRC20.sol";
import "./BaseTRC20.sol";

contract YJ is ITRC20, TRC20Detailed {
    constructor(address gr) public TRC20Detailed("Yi Jing", "YJ", 6){
        require(gr != address(0), "invalid gr");
        _mint(gr, 13591012 * 10 ** 6);
    }
}