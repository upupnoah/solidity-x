// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// constant变量必须在声明的时候初始化，之后再也不能改变。尝试改变的话，编译不通过
// immutable变量可以在声明时或构造函数中初始化，因此更加灵活

// constant and immutable
contract ConstantImmutable {
    // constant变量必须在声明的时候初始化，之后不能改变
    uint256 constant CONSTANT_NUM = 10;
    string constant CONSTANT_STRING = "0xAA";
    bytes constant CONSTANT_BYTES = "WTF";
    address constant CONSTANT_ADDRESS =
        0x0000000000000000000000000000000000000000;

    // immutable变量可以在constructor里初始化，之后不能改变
    uint256 public immutable IMMUTABLE_NUM = 9999999999;
    address public immutable IMMUTABLE_ADDRESS;
    uint256 public immutable IMMUTABLE_BLOCK;
    uint256 public immutable IMMUTABLE_TEST;

    // 利用constructor初始化immutable变量，因此可以利用
    constructor() {
        IMMUTABLE_ADDRESS = address(this);
        IMMUTABLE_BLOCK = block.number;
        IMMUTABLE_TEST = test();
    }

    function test() public pure returns (uint256) {
        uint256 what = 9;
        return (what);
    }
}
