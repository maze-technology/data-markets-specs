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
    @required
    dataProviderId: Document

    @required
    extraDatas: MarketMetaDatasExtraDatasMap

    @required
    toolBox: MarketMetaDatasToolBoxMap
}
