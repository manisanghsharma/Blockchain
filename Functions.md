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

