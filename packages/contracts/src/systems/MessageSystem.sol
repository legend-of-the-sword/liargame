// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;
import { System } from "@latticexyz/world/src/System.sol";
import { MessageTable } from "../codegen/index.sol";

contract MessageSystem is System {
  function sendMessage(string memory message, bytes32 gameId) public {
    MessageTable.set( gameId, msg.sender, message);
  }
}