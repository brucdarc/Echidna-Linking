import './Library1.sol';

contract A {
    uint256 public x = 128;
    function doFoo(uint256 input) external view returns(uint256){
        return Library1.foo(input);
    }
}
