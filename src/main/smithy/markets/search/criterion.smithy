$version: "2"

namespace tech.maze.dtos.markets.search

use smithy.api#Document

union CriterionFilter {
    byId: Document
    byTypeAndExchangeIdAndBaseIdAndQuoteId: CriterionFilterByTypeAndExchangeIdAndBaseIdAndQuoteId
}

structure Criterion {
    filter: CriterionFilter
}

structure CriterionFilterByTypeAndExchangeIdAndBaseIdAndQuoteId {
    type: CriteriaFilterByType
    exchangeId: Document
    baseId: Document
    quoteId: Document
}
