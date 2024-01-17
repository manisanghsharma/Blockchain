# Structs
Structures are a collection of variables of different types that are used to group related data togther.

For instance, if you wanted to store information about a person, you could create a structure that contains the person's name, age, and height:

In solidity, you can define a structure using the `struct` keyword:

```solidity
struct People{
        uint256 favNum;
        string name;
    }
```
To create a new instance of a structure, you can do the following:

```solidity
People public person = People({favNum: 2, name: "Patrick"});
```     

This creates a new instance of the `People` structure called `person` with the `favNum` variable set to `2` and the `name` variable set to `"Patrick"`.

# Arrays

Arrays are used to store lists of variables of the same type.

For instance, if you wanted to store a list of people's ages, you could create an array of `uint256` variables:

```solidity
uint256[] public peopleAges;
```

Here [] indicates that this is an array of dynamic size. You can also create arrays of fixed size by specifying the size in the square brackets:

```solidity
uint256[3] public peopleAges = [1, 2, 3];
```

Similiary to create an array of structures, you can do the following:

```solidity
People[] public people;
```

This creates an array of `People` structure called `people`.

To add a new person to the array, you can do the following:

![add person](https://i.imgur.com/F1sQJIz.png)

Any of these 3 is viable but the first one is the most explicit.

To can access the index of the array to get the person at that index. Let us make a function to add people to the array.

![addPeople func](https://i.imgur.com/QDq9yBk.png)

After adding the function, we can call it from the remix IDE.

![addPeople func ex](https://i.imgur.com/urM8at3.png)
![addPeople func ex](https://i.imgur.com/f4l07T4.png)

The `people` button takes the index and shows the value at that index

# Mapping

Mapping is a data structure that is used to store key-value pairs. It is similar to a dictionary in python.

For instance, if you want the favourite number of a person, you can create a mapping that maps the person's name to their favourite number. So you do not need to traverse the entire array to find the favourite number of a person.

In solidity, you can create a mapping using the `mapping` keyword:

```solidity
mapping(string => uint256) public nameToFavoriteNum;
```

This implies that a `string` is mapped to a `uint256`.

By default the mapping of every integer is set to `0`. So if you try to access the mapping of a person who is not in the mapping, you will get `0` as the output.

Now we can modify the function a bit to map the name to the favourite number.

![mapping](https://i.imgur.com/rK5hmZE.png)

Now we can call the function from the remix IDE.

![mapping](https://i.imgur.com/ofJt7on.png)

After adding `Manitra`, we can check her favourite number directly from the mapping.
