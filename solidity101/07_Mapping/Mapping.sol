// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Mapping {
    mapping(uint => address) public idToAddress; // id映射到地址
    mapping(address => address) public swapPair; // 币对的映射，地址到地址

    // 我们定义一个结构体 Struct
    // mapping 的规则
    // 1. 映射的_KeyType只能选择solidity默认的类型，比如uint，address等，不能用自定义的结构体
    // 2. 映射的存储位置必须是storage，因此可以用于合约的状态变量，函数中的storage变量，和library函数的参数
    // 3. 如果映射声明为public，那么solidity会自动给你创建一个getter函数，可以通过Key来查询对应的Value
    // 4. 给映射新增的键值对的语法为_Var[_Key] = _Value，其中_Var是映射变量名，_Key和_Value对应新增的键值对
    struct Student {
        uint256 id;
        uint256 score;
    }
    // mapping(Student => uint) public testVar; // 会报错, 自定义的结构体不能作为 KeyType

    function writeMap(uint _Key, address _Value) public {
        idToAddress[_Key] = _Value;
    }
}
