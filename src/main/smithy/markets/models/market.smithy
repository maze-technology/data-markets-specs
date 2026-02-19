$version: "2"

namespace tech.maze.dtos.markets.models

use alloy.proto#protoEnabled

use smithy.api#Document
use smithy.api#Timestamp
use tech.maze.dtos.markets.enums#Type

list MarketDataProvidersMetaDatasList {
    member: DataProviderMetaDatas
}

@protoEnabled
structure Market {
    id: Document
    type: Type
    exchangeId: Document
    baseId: Document
    quoteId: Document
    dataProvidersMetaDatas: MarketDataProvidersMetaDatasList
    createdAt: Timestamp
}

@protoEnabled
structure MarketType {
    id: Document
    enum: Type
}
