$version: "2"

namespace tech.maze.dtos.markets.main.proto

use tech.maze.dtos.markets.requests#FindByDataProvidersRequest
use tech.maze.dtos.markets.requests#FindByDataProvidersResponse
use tech.maze.dtos.markets.requests#FindOneRequest
use tech.maze.dtos.markets.requests#FindOneResponse

service MarketsGRPC {
    version: "1.0"
    operations: [
        FindOne
        FindByDataProviders
    ]
}

@readonly
operation FindOne {
    input: FindOneRequest
    output: FindOneResponse
}

@readonly
operation FindByDataProviders {
    input: FindByDataProvidersRequest
    output: FindByDataProvidersResponse
}
