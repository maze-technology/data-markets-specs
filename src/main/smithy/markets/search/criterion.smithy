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
    @required
    filter: CriterionFilter
}

@protoEnabled
structure CriterionFilterByTypeAndExchangeIdAndBaseIdAndQuoteId {
    @required
    type: CriteriaFilterByType

    @required
    exchangeId: Document

    @required
    baseId: Document

    @required
    quoteId: Document
}
