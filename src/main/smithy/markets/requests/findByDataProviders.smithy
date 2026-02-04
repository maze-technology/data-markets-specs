$version: "2"

namespace tech.maze.dtos.markets.requests

use smithy.api#Document
use tech.maze.dtos.markets.models#Market

list FindByDataProvidersRequestDataProvidersList {
    member: Document
}

list FindByDataProvidersResponseMarketsList {
    member: Market
}

structure FindByDataProviders {}

structure FindByDataProvidersRequest {
    dataProviders: FindByDataProvidersRequestDataProvidersList
}

structure FindByDataProvidersResponse {
    markets: FindByDataProvidersResponseMarketsList
}
