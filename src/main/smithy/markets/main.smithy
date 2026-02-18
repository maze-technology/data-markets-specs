$version: "2"

namespace tech.maze.dtos.markets.main.proto

use tech.maze.dtos.markets.requests#FindByDataProvidersRequest
use tech.maze.dtos.markets.requests#FindByDataProvidersResponse
use tech.maze.dtos.markets.requests#FindOneRequest
use tech.maze.dtos.markets.requests#FindOneResponse
use tech.maze.dtos.markets.requests#SyncMarketsRequest
use tech.maze.dtos.markets.requests#SyncMarketsResponse

service MarketsGRPC {
    version: "1.0"
    operations: [
        FindOne,
        FindByDataProviders
    ]
}

service MarketsQueue {
    version: "1.0"
    operations: [
        SyncMarkets
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

operation SyncMarkets {
    input: SyncMarketsRequest
    output: SyncMarketsResponse
}
