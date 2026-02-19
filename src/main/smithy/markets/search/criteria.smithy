$version: "2"

namespace tech.maze.dtos.markets.search

use alloy.proto#protoEnabled

use smithy.api#Document
use tech.maze.dtos.markets.enums#Type

@protoEnabled
union CriteriaFilterByTypeFilter {
    id: Document
    enum: Type
}

@protoEnabled
structure Criteria {}

@protoEnabled
structure CriteriaFilterByType {
    filter: CriteriaFilterByTypeFilter
}