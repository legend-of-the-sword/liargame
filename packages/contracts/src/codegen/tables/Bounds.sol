// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema } from "@latticexyz/store/src/Schema.sol";
import { EncodedLengths, EncodedLengthsLib } from "@latticexyz/store/src/EncodedLengths.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

struct BoundsData {
  int32 minX;
  int32 minY;
  int32 minZ;
  int32 maxX;
  int32 maxY;
  int32 maxZ;
}

library Bounds {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "", name: "Bounds", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x74620000000000000000000000000000426f756e647300000000000000000000);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x0018060004040404040400000000000000000000000000000000000000000000);

  // Hex-encoded key schema of ()
  Schema constant _keySchema = Schema.wrap(0x0000000000000000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (int32, int32, int32, int32, int32, int32)
  Schema constant _valueSchema = Schema.wrap(0x0018060023232323232300000000000000000000000000000000000000000000);

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](0);
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](6);
    fieldNames[0] = "minX";
    fieldNames[1] = "minY";
    fieldNames[2] = "minZ";
    fieldNames[3] = "maxX";
    fieldNames[4] = "maxY";
    fieldNames[5] = "maxZ";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Get minX.
   */
  function getMinX() internal view returns (int32 minX) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Get minX.
   */
  function _getMinX() internal view returns (int32 minX) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Set minX.
   */
  function setMinX(int32 minX) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((minX)), _fieldLayout);
  }

  /**
   * @notice Set minX.
   */
  function _setMinX(int32 minX) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((minX)), _fieldLayout);
  }

  /**
   * @notice Get minY.
   */
  function getMinY() internal view returns (int32 minY) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Get minY.
   */
  function _getMinY() internal view returns (int32 minY) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Set minY.
   */
  function setMinY(int32 minY) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((minY)), _fieldLayout);
  }

  /**
   * @notice Set minY.
   */
  function _setMinY(int32 minY) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((minY)), _fieldLayout);
  }

  /**
   * @notice Get minZ.
   */
  function getMinZ() internal view returns (int32 minZ) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Get minZ.
   */
  function _getMinZ() internal view returns (int32 minZ) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Set minZ.
   */
  function setMinZ(int32 minZ) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((minZ)), _fieldLayout);
  }

  /**
   * @notice Set minZ.
   */
  function _setMinZ(int32 minZ) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((minZ)), _fieldLayout);
  }

  /**
   * @notice Get maxX.
   */
  function getMaxX() internal view returns (int32 maxX) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Get maxX.
   */
  function _getMaxX() internal view returns (int32 maxX) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Set maxX.
   */
  function setMaxX(int32 maxX) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked((maxX)), _fieldLayout);
  }

  /**
   * @notice Set maxX.
   */
  function _setMaxX(int32 maxX) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked((maxX)), _fieldLayout);
  }

  /**
   * @notice Get maxY.
   */
  function getMaxY() internal view returns (int32 maxY) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Get maxY.
   */
  function _getMaxY() internal view returns (int32 maxY) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Set maxY.
   */
  function setMaxY(int32 maxY) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked((maxY)), _fieldLayout);
  }

  /**
   * @notice Set maxY.
   */
  function _setMaxY(int32 maxY) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked((maxY)), _fieldLayout);
  }

  /**
   * @notice Get maxZ.
   */
  function getMaxZ() internal view returns (int32 maxZ) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 5, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Get maxZ.
   */
  function _getMaxZ() internal view returns (int32 maxZ) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 5, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /**
   * @notice Set maxZ.
   */
  function setMaxZ(int32 maxZ) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 5, abi.encodePacked((maxZ)), _fieldLayout);
  }

  /**
   * @notice Set maxZ.
   */
  function _setMaxZ(int32 maxZ) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 5, abi.encodePacked((maxZ)), _fieldLayout);
  }

  /**
   * @notice Get the full data.
   */
  function get() internal view returns (BoundsData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    (bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData) = StoreSwitch.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Get the full data.
   */
  function _get() internal view returns (BoundsData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    (bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData) = StoreCore.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function set(int32 minX, int32 minY, int32 minZ, int32 maxX, int32 maxY, int32 maxZ) internal {
    bytes memory _staticData = encodeStatic(minX, minY, minZ, maxX, maxY, maxZ);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function _set(int32 minX, int32 minY, int32 minZ, int32 maxX, int32 maxY, int32 maxZ) internal {
    bytes memory _staticData = encodeStatic(minX, minY, minZ, maxX, maxY, maxZ);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function set(BoundsData memory _table) internal {
    bytes memory _staticData = encodeStatic(
      _table.minX,
      _table.minY,
      _table.minZ,
      _table.maxX,
      _table.maxY,
      _table.maxZ
    );

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function _set(BoundsData memory _table) internal {
    bytes memory _staticData = encodeStatic(
      _table.minX,
      _table.minY,
      _table.minZ,
      _table.maxX,
      _table.maxY,
      _table.maxZ
    );

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Decode the tightly packed blob of static data using this table's field layout.
   */
  function decodeStatic(
    bytes memory _blob
  ) internal pure returns (int32 minX, int32 minY, int32 minZ, int32 maxX, int32 maxY, int32 maxZ) {
    minX = (int32(uint32(Bytes.getBytes4(_blob, 0))));

    minY = (int32(uint32(Bytes.getBytes4(_blob, 4))));

    minZ = (int32(uint32(Bytes.getBytes4(_blob, 8))));

    maxX = (int32(uint32(Bytes.getBytes4(_blob, 12))));

    maxY = (int32(uint32(Bytes.getBytes4(_blob, 16))));

    maxZ = (int32(uint32(Bytes.getBytes4(_blob, 20))));
  }

  /**
   * @notice Decode the tightly packed blobs using this table's field layout.
   * @param _staticData Tightly packed static fields.
   *
   *
   */
  function decode(
    bytes memory _staticData,
    EncodedLengths,
    bytes memory
  ) internal pure returns (BoundsData memory _table) {
    (_table.minX, _table.minY, _table.minZ, _table.maxX, _table.maxY, _table.maxZ) = decodeStatic(_staticData);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord() internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord() internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(
    int32 minX,
    int32 minY,
    int32 minZ,
    int32 maxX,
    int32 maxY,
    int32 maxZ
  ) internal pure returns (bytes memory) {
    return abi.encodePacked(minX, minY, minZ, maxX, maxY, maxZ);
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(
    int32 minX,
    int32 minY,
    int32 minZ,
    int32 maxX,
    int32 maxY,
    int32 maxZ
  ) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData = encodeStatic(minX, minY, minZ, maxX, maxY, maxZ);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple() internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    return _keyTuple;
  }
}
