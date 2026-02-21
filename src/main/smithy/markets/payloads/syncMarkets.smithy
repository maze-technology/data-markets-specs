$version: "2"

namespace tech.maze.dtos.markets.payloads

use tech.maze.events#event

@event(type: "tech.maze.markets.sync.request", topic: "markets.sync.request", version: "1.0.0")
structure SyncMarketsRequest {}

@event(type: "tech.maze.markets.sync.response", version: "1.0.0")
structure SyncMarketsResponse {
    @required
    skipped: Long
}
