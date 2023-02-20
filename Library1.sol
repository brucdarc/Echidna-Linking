
library Library1 {
    uint256 public constant number1 = 1;
    uint256 public constant number2 = 2;

    function foo(uint256 input) external view returns (uint256){
        return input * 5;
    }
}
