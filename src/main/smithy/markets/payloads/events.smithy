$version: "2"

namespace tech.maze.dtos.markets.payloads

use alloy.proto#protoEnabled
use smithy.api#Document
use tech.maze.events#event

@protoEnabled
@event(type: "tech.maze.markets.sync.event", topic: "markets.sync", version: "1.0.0")
structure SyncMarketsEvent {}

@protoEnabled
@event(type: "tech.maze.markets.sync.reply", topic: "markets.sync.reply", version: "1.0.0")
structure SyncMarketsReplyEvent {
    skipped: Long
}

@protoEnabled
@event(type: "tech.maze.markets.fetch.event", topic: "markets.fetch", version: "1.0.0")
structure FetchMarketsEvent {}

@protoEnabled
@event(type: "tech.maze.markets.fetch.reply", topic: "markets.fetch.reply", version: "1.0.0")
structure FetchMarketsReplyEvent {
    @required
    sourceEvent: FetchMarketsEvent

    @required
    key: String

    @required
    isLast: Boolean

    @required
    @range(min: 0)
    skipped: Long

    @required
    dataProvider: Document
}
