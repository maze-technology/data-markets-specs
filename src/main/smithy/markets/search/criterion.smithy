$version: "2"

namespace tech.maze.dtos.markets.search

use smithy.api#Document

union CriterionFilter {
    byId: Document
    byTypeAndExchangeIdAndBaseIdAndQuoteId: FilterByTypeAndExchangeIdAndBaseIdAndQuoteId
}

structure Criterion {
    filter: CriterionFilter
}

structure CriterionFilterByTypeAndExchangeIdAndBaseIdAndQuoteId {
    type: FilterByType
    exchangeId: Document
    baseId: Document
    quoteId: Document
}
