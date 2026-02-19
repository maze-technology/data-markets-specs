$version: "2"

namespace tech.maze.dtos.markets.requests

use alloy.proto#protoEnabled

use smithy.api#Document
use tech.maze.dtos.markets.models#Market

@protoEnabled
list FindByDataProvidersRequestDataProvidersList {
    member: Document
}

@protoEnabled
list FindByDataProvidersResponseMarketsList {
    member: Market
}

@protoEnabled
structure FindByDataProvidersRequest {
    dataProviders: FindByDataProvidersRequestDataProvidersList
}

@protoEnabled
structure FindByDataProvidersResponse {
    markets: FindByDataProvidersResponseMarketsList
}