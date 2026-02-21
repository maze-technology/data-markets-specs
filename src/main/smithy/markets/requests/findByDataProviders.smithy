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
    @required
    dataProviders: FindByDataProvidersRequestDataProvidersList

    @required
    pagination: Pagination
}

@protoEnabled
structure FindByDataProvidersResponse {
    @required
    markets: FindByDataProvidersResponseMarketsList

    @required
    paginationInfos: PaginationInfos
}
