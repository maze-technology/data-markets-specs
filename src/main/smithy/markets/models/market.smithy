$version: "2"
namespace tech.maze.dtos.markets.models

use smithy.api#Document
use smithy.api#Timestamp
use tech.maze.dtos.markets.enums#Type

list MarketDataProvidersMetaDatasList {
  member: DataProviderMetaDatas
}

structure Market {
  id: Document
  type: Type
  exchangeId: Document
  baseId: Document
  quoteId: Document
  dataProvidersMetaDatas: MarketDataProvidersMetaDatasList
  createdAt: Timestamp
}

structure MarketType {
  id: Document
  enum: Type
}
