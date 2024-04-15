// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// 变量初始值
// boolean: false
// string: ""
// int: 0
// uint: 0
// enum: 枚举中的第一个元素
// address: 0x0000000000000000000000000000000000000000 (或 address(0))
// function
// internal: 空白方程
// external: 空白方程

contract VarInit {
    bool public _bool; // false
    string public _string; // ""
    int public _int; // 0
    uint public _uint; // 0
    address public _address; // 0x0000000000000000000000000000000000000000

    enum ActionSet {
        Buy,
        Hold,
        Sell
    }
    ActionSet public _enum; // 第1个内容Buy的索引0

    function fi() internal {} // internal空白方程
    function fe() external {} // external空白方程

    // Reference Types
    uint[8] public _staticArray; // 所有成员设为其默认值的静态数组[0,0,0,0,0,0,0,0]
    uint[] public _dynamicArray; // `[]`
    mapping(uint => address) public _mapping; // 所有元素都为其默认值的mapping
    // 所有成员设为其默认值的结构体 0, 0
    struct Student {
        uint256 id;
        uint256 score;
    }
    Student public student;

    // delete 操作符, 将变量重置为其默认值
    function reset() public {
        delete _bool;
        delete _string;
        delete _int;
    }
}
