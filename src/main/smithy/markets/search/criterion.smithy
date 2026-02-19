$version: "2"

namespace tech.maze.dtos.markets.search

use alloy.proto#protoEnabled

use smithy.api#Document

union CriterionFilter {
    byId: Document
    byTypeAndExchangeIdAndBaseIdAndQuoteId: CriterionFilterByTypeAndExchangeIdAndBaseIdAndQuoteId
}

@protoEnabled
structure Criterion {
    filter: CriterionFilter
}

@protoEnabled
structure CriterionFilterByTypeAndExchangeIdAndBaseIdAndQuoteId {
    type: CriteriaFilterByType
    exchangeId: Document
    baseId: Document
    quoteId: Document
}
