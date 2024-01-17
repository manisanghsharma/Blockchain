# Solidity Basics

## Solidity Version
Every Solidity file should start with a version declaration. This is to prevent the contract from compiling with future compiler versions that may introduce breaking changes.

```solidity
pragma solidity 0.8.8;
```

This means that the contract can be compiled with a compiler version that is greater than or equal to 0.8.8. Similiary, we can define what versions are allowed by using greater than or equal to and less than or equal to. Using a caret `^` implies that the contract can be compiled with a compiler version that is greater than or equal to the specified version and less than the next major version.

```solidity
pragma solidity >=0.8.8 <0.9.0;
//or
pragma solidity ^0.8.8;
```

This implies that the contract can be compiled with a compiler version that is greater than or equal to 0.8.8 and less than 0.9.0.

## Licence
Every Solidity file should have a licence declaration. This is to prevent the contract from being used without permission. The most common licence is the MIT licence.

```solidity
// SPDX-License-Identifier: MIT
```

The license is specified under a comment. In solidity, comments are specified using `//` for single line comments and `/* */` for multi-line comments.

# Coding Contracts

## Contract

To make a contract, we use the `contract` keyword. The name of the contract should be in PascalCase.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
contract MyContract {
}
```

## Variables
In solidity, we have different types of variables. The most common ones are `uint`, `int`, `bool`, `address`, `string`, `bytes`. 

In Solidity, the default value of a variable is `0` for integers, `false` for boolean. For strings and bytes, the default value is an empty string or an empty byte array.

- ### uint [unsigned integer]
    `uint` is an unsigned integer. This means that it can only store `positive` integers. The size of the integer can be specified. We can specify the bits. For example, `uint8` can store integers from 0 to 255. `uint256` can store integers from 0 to 2^256 - 1. The default size is `uint256`. 

    The size can be incremented in multiples of 8. For example, `uint16`, `uint24`, `uint32`, `uint256`

    `uint2` wont work because the size is not a multiple of 8.

    ```solidity
    uint8 a = 255;
    uint256 b = 2**256 - 1;
    ```

- ### int
    `int` is a signed integer. This means that it can store both `positive` and `negative` integers. The size can be specified like uint. The default size is `int256`.

    ```solidity
    int a = -1;
    ```

- ### bool
    `bool` is a boolean. It can store either `true` or `false`.

    ```solidity
    bool a = true;
    ```

- ### address
    `address` is a special type of variable that can store an ethereum address. It can be used to store the address of a user or a contract. It can also be used to send ether to a user or a contract.

    ```solidity
    address a = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    ```

- ### string
    `string` is a string of characters. It can be used to store a name or a sentence. No size needs to be specified.

    ```solidity
    string a = "Hello";
    ```

- ### bytes
    `bytes` is a byte array. It can be used to store a sequence of bytes. It is similiar to string but it stores bytes instead of characters. The size can be specified which ranges from 1 to 32 which does not need to be a multiple of 8.

    For example, `bytes1`, `bytes2`, `bytes3`, `bytes32`

    ```solidity
    bytes a = "Hello";
    ```

    `In solidity, it is recommended to be explicit about the size of the variable. For example, instead of using uint, we should use uint256.`

