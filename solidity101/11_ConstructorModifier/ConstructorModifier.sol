// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ConstructorDecorator {
    address owner; // 定义owner变量

    // 构造函数
    constructor() {
        owner = msg.sender; // 在部署合约的时候，将owner设置为部署者的地址
    }

    // 修饰器
    // 定义modifier
    modifier onlyOwner() {
        require(msg.sender == owner); // 检查调用者是否为owner地址
        _; // 如果是的话，继续运行函数主体；否则报错并revert交易
    }

    // 完整的修饰器写法: function xxx() public pure modifier returns() {}
    function changeOwner(address _newOwner) external onlyOwner {
        owner = _newOwner; // 只有owner地址运行这个函数，并改变owner
    }
}

// 构造函数旧写法

// pragma solidity =0.4.21;
// contract Parents {
//     // 与合约名Parents同名的函数就是构造函数
//     function Parents() public {}
// }
