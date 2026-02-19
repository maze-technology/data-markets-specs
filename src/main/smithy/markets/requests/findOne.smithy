$version: "2"

namespace tech.maze.dtos.markets.requests

use tech.maze.dtos.markets.models#Market
use tech.maze.dtos.markets.search#Criterion

structure FindOneRequest {
    criterion: Criterion
}

structure FindOneResponse {
    market: Market
}
