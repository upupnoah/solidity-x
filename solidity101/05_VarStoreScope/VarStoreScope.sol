// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract VarStoreScope {
    uint public x = 1;
    uint public y;
    string public z;

    // 状态变量
    function foo() external {
        // 可以在函数里更改状态变量的值
        x = 5;
        y = 2;
        z = "0xAA";
    }

    // 局部变量
    function bar() external pure returns (uint) {
        uint xx = 1;
        uint yy = 3;
        uint zz = xx + yy;
        return (zz);
    }

    // 全局变量
    function global() external view returns (address, uint, bytes memory) {
        address sender = msg.sender;
        uint blockNum = block.number;
        bytes memory data = msg.data;
        return (sender, blockNum, data);
    }
}
