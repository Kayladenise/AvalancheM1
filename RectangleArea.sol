//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RectangleArea {

    //state variables to store length and width of the rectangle
    uint256 public length;
    uint256 public width;

    //to set length with require() statement
    function setLength(uint256 _length) public {
        require(_length > 0, "Length must be greater than zero.");
        length = _length;
    }

    //to set width with revert() statement
    function setWidth(uint256 _width) public {
        if (_width == 0) {
            revert("Width cannot be zero.");
        }
        width = _width;
    }

    //to calculate area with assert() statement
    function calculateArea() public view returns (uint256) {
        assert(length > 0 && width > 0); // to ensure length & width are non-zero
        return length * width;
    }
}
