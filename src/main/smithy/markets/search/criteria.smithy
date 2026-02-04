$version: "2"

namespace tech.maze.dtos.markets.search

use smithy.api#Document
use tech.maze.dtos.markets.enums#Type

union CriteriaFilterByTypeFilter {
    id: Document
    enum: Type
}

structure Criteria {}

structure CriteriaFilterByType {
    filter: CriteriaFilterByTypeFilter
}
