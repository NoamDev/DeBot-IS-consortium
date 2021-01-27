> :warning: **This Interface should be implemented by DeBot Engine**
# GraphQL Interface
**Status**: Proposed

| Name      		| ID                                                                |
| :--------------------	| :---------------------------------------------------------------- |
| GraphQL       | 3022ca1522612076c1f4b88096f7aa996070f99b8efdfc0d911ee874cf922bbd  |

## Description

Allows to deserialize json into the structure.
> :warning: **This Interface should be implemented by DeBot Engine**
## Functions

`query` - perform a GraphQL query on the blockchain.

arguments: 

    answerId: uint32 - function id of result callback. Callback function should have two input parameters: "success" of type bool and "resultJson" of type string.

    queryStr: string - graphql query string

returns: 

     success: bool - result of operation
				true - operation succeeded, result is in resultJson
				false - operation failed, error is in resultJson

     resultJson: string - the json encoded result of the graphql query.

>Note: Input parameters of answerId function should have two input parameters: "success" of type bool and "resultJson" of type string. This json should be deserialized using the JsonDeserializer interface.

## Declaration in Solidity

```jsx
interface IGraphQL {
    function query(uint32 answerId, string queryStr) external returns (bool success, string resultJson);
}
```

## Declaration in C++

```cpp
namespace tvm { namespace schema {
__interface IJsonDeserialize {
	[[internal, answer_id]]
	bool_t deserialize(string json, string structName);
};
}}
```

## Code Example

### Solidity

TODO: add later
### C++

TODO: add later.
