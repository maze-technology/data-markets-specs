$version: "2"
namespace tech.maze.dtos.markets.models

use smithy.api#Document

map DataProviderMetaDatasExtraDatasMap {
  key: String
  value: String
}

map DataProviderMetaDatasToolBoxMap {
  key: String
  value: String
}

structure DataProviderMetaDatas {
  dataProviderId: Document
  extraDatas: DataProviderMetaDatasExtraDatasMap
  toolBox: DataProviderMetaDatasToolBoxMap
}
