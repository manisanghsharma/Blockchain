# Functions in Solidity

## Function Declaration
A function is a block of code that performs a specific task. In solidity, a function can be declared using the `function` keyword. The syntax for declaring a function is as follows:

```solidity
function store(uint x) public {
    // function body
}
```

You must be wondering what the `public` keyword is doing in the 
function declaration. The `public` keyword is a visibility modifier.

There are four types of visibility modifiers in solidity:

- `public`: The function can be called `internally and externally`. Basically public acts as a getter function for the state variables. That means if you add public, you can access the state variable from outside the contract. In remix, a button appears in a public you can click the button next to the state variable to `get the value of the state variable`.
- `private`: The function can only be called `internally`. 
 That means you can access the function only from inside the contract. You can't call the function from outside the contract.
- `external`: The function can only be called `externally`. That means you can access the function only from outside the contract. You can't call the function from inside the contract.

- `internal`: The function can be called `internally and by contracts that inherit from this contract`.

## Remix Demo
Let's see how to declare a function in remix.

![Function](https://i.imgur.com/cskgwpI.png)

When we run the code, on clicking favouriteNumber, we get the value of the state variable, which is 0 by default.

![Before](https://i.imgur.com/yo9mn4H.png)

After storing 123 and clicking store, we get:

![After](https://i.imgur.com/LZGZMgS.png)

## Understanding Functions

Whenever a function is called in solidity, some amount of gas is consumed which is small amount of ether. This is because the function is executed on the blockchain.

The amount of gas consumed depends on the amount of code inside the function. The more the code, the more the gas consumed.

In solidity, two types of functions do not occupy any space on the blockchain. These are `view` and `pure` functions. Thus they do not consume any gas.

### View Functions

A view function is a function that does not modify the state of the contract. It only `views` the state of the contract. It is used to read the data from the blockchain. It does not consume any gas.

```solidity
function get() public view returns (uint) {
    return favouriteNumber;
}
```

### Pure Functions

A pure function is a function that does not modify the state of the contract. It does not even `view` the state of the contract. So it neithers reads the data nor writed data from or to the blockchain. It does not consume any gas.

It can be used to perform some calculations.

```solidity
function double(uint x) public pure returns (uint) {
    return x * 2;
}
```

> **Note**: If you call a view or a pure function from anotrher function which is not view or pure, then the function will consume gas.


## Returns 

The keyword `returns` is used to specify the return type of the function. If the function does not return anything, then the keyword `returns` is not used.

```solidity
function get() public view returns (uint256) {
    return favouriteNumber;
}
```

Here the function `get` returns a `uint256` value.

