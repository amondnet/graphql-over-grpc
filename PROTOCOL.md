Queries and mutations are expected and handled as an gRPC request-response interaction while subscriptions are handled as request-stream.

A request for execution should contain the following request parameters:

- {query} - A Document containing GraphQL Operations and Fragments to execute.
- {operationName} - (Optional): The name of the Operation in the Document to execute.
- {variables} - (Optional): Values for any Variables defined by the Operation.
- {extensions} - (Optional): This entry is reserved for implementors to extend the protocol however they see fit.


## Single result operation

`query` and `mutation` operations are expected and handled as an RSocket [request-response](https://rsocket.io/about/protocol#stream-sequences-request-response) interaction.


## Streaming operation

`subscription` operation and queries are expected and handled as an RSocket [request-stream](https://rsocket.io/about/protocol#request-stream) interaction.