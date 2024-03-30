import { defineWorld } from "@latticexyz/world";

export default defineWorld({
  namespace: "games",
  enums: {
  Status: ["Inactive", "Pending", "Active", "Complete"],
  Game: ["LiarGame", "PredictionMarket"],
  },
  tables: {
    /* ------------------------------- INSTRUMENTS ------------------------------ */
    // The position of an instrument in the world
    Position: {
      schema: {
        id: "bytes32",
        x: "int32",
        y: "int32",
        z: "int32",
      },
      key: ["id"],
    },
    // The metadata of an instrument
    Metadata: {
      schema: {
        id: "bytes32",
        instrument: "string",
      },
      key: ["id"],
    },
    // The amount of instruments in the world
    Count: {
      schema: { value: "uint32" },
      key: [],
    },
    /* --------------------------------- TERRAIN -------------------------------- */
    // The bounds of the world (a parcel)
    Bounds: {
      schema: {
        minX: "int32",
        minY: "int32",
        minZ: "int32",
        maxX: "int32",
        maxY: "int32",
        maxZ: "int32",
      },
      key: [],
    },
    GameType: "Game",
    GameStatus: "Status",
    BuyIn: "uint256",
    SubmissionWindow: "uint32",
    InviteExpiration: "uint256",
    GameStartTime: "uint256",
    Player1: "address",
    Player2: "address",
    Player3: "address",
    Player4: "address",
    Player5: "address",
    Player6: "address",
    Player7: "address",
    Player8: "address",
    Player9: "address",
    Player10: "address",
    Player11: "address",
    Player12: "address",

    Solved: {
      key: [
        "gameId",
        "player"
      ],
      schema: {
        gameId: "bytes32",
        player: "address",
        value: "bool"
      }
    },
    Balance: {
      key: [
        "gameId",
        "player"
      ],
      schema:{
        value: "uint256",
        gameId: "bytes32",
        player: "address"

      },
    },
    OtherPlayer: {
      key: [
        "gameId",
        "me"
      ],
      schema: {
        gameId: "bytes32",
        me: "address",
        value: "address",
      },
    },

    RematchCount: "uint16",
    VoteRematch: {
      key: [
        "gameId",
        "me"
      ],
      schema: {
        gameId: "bytes32",
        me: "address",
        value: "bool",
    },
  },
  MessageTable: {
    type: "offchainTable",
    key: ["gameId", "player"],
    schema: {
      value: "string",
      gameId: "bytes32",
      player: "address",
    },
},
},
    modules: [
      {
        name: "UniqueEntityModule",
        root: true,
        args: [],
      },
    ],

});
