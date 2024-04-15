// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ArrayStruct {
    // 固定长度 Array
    uint[8] array1;
    bytes1[5] array2;
    address[100] array3;

    // 可变长度 Array
    uint[] array4;
    bytes1[] array5;
    address[] array6;
    bytes array7;

    function test() public pure {
        // memory动态数组
        uint[] memory _array8 = new uint[](5);
        bytes memory _array9 = new bytes(9);
    }

    function f() public pure {
        // 第一个元素需要指定类型, 不然是类型的最小单位
        g([uint(1), 2, 3]);
    }
    function g(uint[3] memory) public pure {
        // ...
        // 创建的是动态数组, 需要一个一个元素赋值
        uint[] memory x = new uint[](3);
        x[0] = 1;
        x[1] = 3;
        x[2] = 4;
    }

    // 数组成员
    // 1. 固定数组和动态数组都有 length 成员, memory 数组的长度在创建之后是固定的

    // 动态数组成员 (方法)
    // 2. push
    // 3. push(x)
    // 4. pop()

    // 结构体
    struct Student {
        uint256 id;
        uint256 score;
    }

    Student student; // 初始一个student结构体

    // 给结构体赋值
    
    // 方法1:在函数中创建一个storage的struct引用
    function initStudent1() external {
        Student storage _student = student; // assign a copy of student (reference)
        _student.id = 11;
        _student.score = 100;
    }

    // 方法2:直接引用状态变量的struct
    function initStudent2() external {
        student.id = 1;
        student.score = 80;
    }
}
