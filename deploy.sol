
interface A{
  function x() external returns (uint256);
  function doFoo(uint256 input) external returns (uint256);
}

contract Test {
  function test(uint256 y) public {
    assert(A(address(0x42)).x() == 128);
    assert(A(address(0x42)).doFoo(y) == y * 5);
  }

  function echidna_test_true() public returns (bool) {
    test(129);
    return true;
  }
}
