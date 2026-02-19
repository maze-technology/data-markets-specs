$version: "2"

namespace tech.maze.dtos.markets.enums

use alloy.proto#protoEnabled

@protoEnabled
enum Type {
    SPOT
    PERPETUAL
}