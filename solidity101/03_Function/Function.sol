// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract FunctionTypes {
    uint256 public number = 5;

    constructor() payable {}

    // 函数类型
    // function <function name>(<parameter types>) {internal|external|public|private} [pure|view|payable] [returns (<return types>)]
    // 默认 function
    function add() external {
        number = number + 1;
    }

    // pure: 纯纯牛马（cannot read or write）
    function addPure(
        uint256 _number
    ) external pure returns (uint256 new_number) {
        new_number = _number + 1;
    }

    // view：只读（cannot write）
    function addView() external view returns (uint256 new_number) {
        new_number = number + 1;
    }

    // internal: 内部函数（只能从合约内部访问，继承的合约可以用）
    function minus() internal {
        number = number - 1;
    }

    // 合约内的函数可以调用内部函数
    function minusCall() external {
        minus();
    }

    // public: 内部外部均可见。
    // private: 只能从本合约内部访问，继承的合约也不能用。
    // external: 只能从合约外部访问（但是可以用this.f()来调用，f是函数名）。
    // internal: 只能从合约内部访问，继承的合约可以用。

    // payable: 递钱，能给合约支付 eth 的函数
    // view / pure / payable
    function minusPayable() external payable returns (uint256 balance) {
        minus();
        balance = address(this).balance;
    }
}
