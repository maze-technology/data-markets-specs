$version: "2"

namespace tech.maze.dtos.markets.models

use alloy.proto#protoEnabled
use smithy.api#Document

map MarketMetaDatasExtraDatasMap {
    key: String
    value: String
}

map MarketMetaDatasToolBoxMap {
    key: String
    value: String
}

@protoEnabled
structure MarketMetaDatas {
    dataProviderId: Document
    extraDatas: MarketMetaDatasExtraDatasMap
    toolBox: MarketMetaDatasToolBoxMap
}
