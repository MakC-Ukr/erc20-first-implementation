// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Vendor is Ownable {
    // TokenContract tokenContract;

    uint256 public constant tokensPerEth = 100;
    uint private balance = 0;

    constructor()
    {
      // _transferOwnership(0xdD870fA1b7C4700F2BD7f44238821C26f7392148); // needs to be changed
    }

    event BuyTokens(address buyer, uint256 amountOfETH, uint256 amountOfTokens);

    // function buyTokens() public payable
    // {
    //     uint toTransfer = (msg.value)/tokensPerEth;
    //     token.transfer(msg.sender, toTransfer);
    //     emit BuyTokens(msg.sender, msg.value, toTransfer);
    //     this.balance+= msg.value;
    // }

    function withdraw() public onlyOwner
    {
      require(address(this).balance > 0);
      address _to =  owner();
      (bool sent, bytes memory data) = _to.call{value: address(this).balance}("");

    }
}