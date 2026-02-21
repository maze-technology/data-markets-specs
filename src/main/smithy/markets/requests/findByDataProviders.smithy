$version: "2"

namespace tech.maze.dtos.markets.requests

use alloy.proto#protoEnabled
use smithy.api#Document
use tech.maze.dtos.commons.search#Pagination
use tech.maze.dtos.commons.search#PaginationInfos
use tech.maze.dtos.markets.models#Market

list FindByDataProvidersRequestDataProvidersList {
    member: Document
}

list FindByDataProvidersResponseMarketsList {
    member: Market
}

@protoEnabled
structure FindByDataProvidersRequest {
    dataProviders: FindByDataProvidersRequestDataProvidersList
    pagination: Pagination
}

@protoEnabled
structure FindByDataProvidersResponse {
    markets: FindByDataProvidersResponseMarketsList
    paginationInfos: PaginationInfos
}
