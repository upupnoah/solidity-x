// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// returns: 跟在函数名之后
// return(): 在函数中之中

contract MultiReturn {
    // 返回多个变量的函数
    function returnMultiple()
        public
        pure
        returns (uint256, bool, uint256[3] memory)
    {
        return (1, true, [uint256(1), 2, 5]);
    }

    // 命名式返回
    function returnNamed()
        public
        pure
        returns (uint256 _number, bool _bool, uint256[3] memory _array)
    {
        _number = 2;
        _bool = false;
        _array = [uint256(3), 2, 1];
    }

    // 命名式返回，依然支持return
    function returnNamed2()
        public
        pure
        returns (uint256 _number, bool _bool, uint256[3] memory _array)
    {
        return (1, true, [uint256(1), 2, 5]);
    }

    function callReturnNamed() public pure {
        (uint256 _number, bool _bool, uint256[3] memory _array) = returnNamed();
        bool _bool2;
        (, _bool2, ) = returnNamed();
        // _number = 2
        // _bool = false
        // _array = [3, 2, 1]
    }
}
