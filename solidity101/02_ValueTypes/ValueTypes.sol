// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract ValueTypes {
    // bool
    bool public _bool = true;

    // 布尔运算
    bool public _bool1 = !_bool; // 非
    bool public _bool2 = _bool && _bool1; // 与
    bool public _bool3 = _bool || _bool1; // 或
    bool public _bool4 = _bool == _bool1; // 相等
    bool public _bool5 = _bool != _bool1; // 不等

    // 整数
    int public _int = -1; // 整数， 包括负数
    uint public _uint = 1; // 正整数
    uint256 public _number = 20220330; // 256 位 正整数

    // 整数运算
    uint256 public _number1 = _number + 1; // +，-，*，/
    uint256 public _number2 = 2 ** 2; // 指数
    uint256 public _number3 = 7 % 2; // 取余
    bool public _numberbool = _number2 > _number3; // 比较

    // 地址, 以太坊地址是 20 字节的， 0x 开头的 16 进制字符串， 1 个字节是 2 个 16 进制字符，因此这里总共 40 个字符
    address public _address = 0x1D791545aEEe89011c20a32C5Be31623C604cB1B;
    address payable public _address1 = payable(_address); // payable address，可以转账、查询余额
    // 地址类型的成员
    uint256 public balance = _address1.balance; // balance of address

    // 固定长度的字节数组
    bytes32 public _byte32 = "MiniSolitidy";
    bytes1 public _byte = _byte32[0];

    // 用 enum 将 uint 0,1,2 表示为 Buy，Hold，Sell
    enum ActionSet {
        Buy,
        Hold,
        Sell
    }
    ActionSet action = ActionSet.Hold;

    // enum 可以和 uint 显示地转换
    function enumToUint() external view returns (uint) {
        return uint(action);
    }
}
