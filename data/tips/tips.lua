local util = require("data/tf_util/tf_util")

local path = function(string)
  return util.path("data/tips/"..string)
end

-- width 960x512 for images to fill the frame.
--[[

  informatron_make_image("depots", path("depots.png"), 960, 512)
  informatron_make_image("road_network", path("road_network.png"), 960, 512)
  informatron_make_image("request_depot_1", path("request_depot_1.png"), 960, 512)
  informatron_make_image("request_depot_2", path("request_depot_2.png"), 960, 512)
  informatron_make_image("fuel_depot", path("fuel_depot.png"), 960, 512)
  informatron_make_image("transport_drones", path("transport_drones.png"), 960, 512)
  informatron_make_image("road_network_reader", path("road_network_reader.png"), 960, 512)
  informatron_make_image("supply_depot", path("supply_depot.png"), 960, 512)
  informatron_make_image("buffer_depot", path("buffer_depot.png"), 960, 512)
  informatron_make_image("circuit_connectors", path("circuit_connectors.png"), 960, 512)
  informatron_make_image("transport_depots", path("transport_depots.png"), 960, 512)
  informatron_make_image("mining_depots", path("mining_depots.png"), 960, 512)

  informatron_make_image("depot_reader", path("depot_reader.png"), 320, 320)
  informatron_make_image("depot_writer", path("depot_writer.png"), 320, 320)
  informatron_make_image("depot_writer_special", path("depot_writer_special.png"), 512, 512)
  informatron_make_image("network_reader", path("network_reader.png"), 320, 320)

  ]]


local tips =
{


  {
    type = "tips-and-tricks-item-category",
    name = "transport-drones",
    order = "t-[transport-drones]"
  },
  {
    type = "tips-and-tricks-item",
    name = "transport-drones",
    localised_name = {"transport_drones.title_transport_drones"},
    localised_description = {"transport_drones_pages.welcome-1"},
    order = "a",
    trigger =
    {
      type = "research",
      technology = "transport-system"
    },
    is_title = true,
    indent = 0,
    image = path("transport_drones.png"),
    category = "transport-drones",
  },
  {
    type = "tips-and-tricks-item",
    name = "road-network",
    localised_name = {"transport_drones.title_road_network"},
    localised_description = {"transport_drones_pages.road-network"},
    order = "b",
    dependencies = {"transport-drones"},
    indent = 1,
    image = path("road_network.png"),
    category = "transport-drones",
    tag = "[item=road]"
  },
  {
    type = "tips-and-tricks-item",
    name = "drones",
    localised_name = {"transport_drones.title_drone"},
    localised_description = {"transport_drones_pages.drones-1"},
    order = "c",
    dependencies = {"transport-drones"},
    indent = 1,
    image = path("transport_drones.png"),
    category = "transport-drones",
    tag = "[item=transport-drone]"
  },

  {
    type = "tips-and-tricks-item",
    name = "depots",
    localised_name = {"transport_drones.title_depots"},
    localised_description = {"transport_drones_pages.transport-depots"},
    order = "d",
    dependencies = {"transport-drones"},
    category = "transport-drones",
    indent = 1,
    image = path("transport_depots.png"),
    tag = "[technology=transport-system]"
  },
  {
    type = "tips-and-tricks-item",
    name = "fuel-depots",
    localised_name = {"transport_drones.title_fuel_depots"},
    localised_description = {"transport_drones_pages.fuel-depot-1"},
    order = "e",
    dependencies = {"transport-drones"},
    category = "transport-drones",
    indent = 2,
    image = path("fuel_depot.png"),
    tag = "[item=fuel-depot]"
  },
  {
    type = "tips-and-tricks-item",
    name = "request-depots",
    localised_name = {"transport_drones.title_request_depots"},
    localised_description = {"transport_drones_pages.request-depot-1"},
    order = "f",
    dependencies = {"transport-drones"},
    category = "transport-drones",
    indent = 2,
    image = path("request_depot_1.png"),
    tag = "[item=request-depot]"
  },
  {
    type = "tips-and-tricks-item",
    name = "supply-depots",
    localised_name = {"transport_drones.title_supply_depots"},
    localised_description = {"transport_drones_pages.supply-depot"},
    order = "g",
    dependencies = {"transport-drones"},
    category = "transport-drones",
    indent = 2,
    image = path("supply_depot.png"),
    tag = "[item=supply-depot]"
  },
  {
    type = "tips-and-tricks-item",
    name = "buffer-depots",
    localised_name = {"transport_drones.title_buffer_depots"},
    localised_description = {"transport_drones_pages.buffer-depot"},
    order = "h",
    dependencies = {"transport-drones"},
    category = "transport-drones",
    indent = 2,
    image = path("buffer_depot.png"),
    tag = "[item=buffer-depot]"
  },
  {
    type = "tips-and-tricks-item",
    name = "circuit-connectors",
    localised_name = {"transport_drones.title_circuit_connectors"},
    localised_description = {"transport_drones_pages.circuit-connectors"},
    order = "i",
    dependencies = {"transport-drones"},
    category = "transport-drones",
    indent = 1,
    image = path("circuit_connectors.png"),
    tag = "[technology=transport-depot-circuits]"
  },
  {
    type = "tips-and-tricks-item",
    name = "depot-reader",
    localised_name = {"transport_drones.title_depot_reader"},
    localised_description = {"transport_drones_pages.depot-reader"},
    order = "j",
    dependencies = {"transport-drones"},
    category = "transport-drones",
    indent = 2,
    image = path("depot_reader.png"),
    tag = "[item=transport-depot-reader]"
  },
  {
    type = "tips-and-tricks-item",
    name = "depot-writer",
    localised_name = {"transport_drones.title_depot_writer"},
    localised_description = {"transport_drones_pages.depot-writer"},
    order = "k",
    dependencies = {"transport-drones"},
    category = "transport-drones",
    indent = 2,
    image = path("depot_writer.png"),
    tag = "[item=transport-depot-writer]"
  },
  {
    type = "tips-and-tricks-item",
    name = "network-reader",
    localised_name = {"transport_drones.title_network_reader"},
    localised_description = {"transport_drones_pages.network-reader"},
    order = "l",
    dependencies = {"transport-drones"},
    category = "transport-drones",
    indent = 2,
    image = path("network_reader.png"),
    tag = "[item=transport-depot-reader]"
  },


}

data:extend(tips)