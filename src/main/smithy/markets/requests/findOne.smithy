$version: "2"

namespace tech.maze.dtos.markets.requests

use alloy.proto#protoEnabled

use tech.maze.dtos.markets.models#Market
use tech.maze.dtos.markets.search#Criterion

@protoEnabled
structure FindOneRequest {
    criterion: Criterion
}

@protoEnabled
structure FindOneResponse {
    market: Market
}