package = "mqtt"
version = "0.3-1"

source = {
  url = "git://github.com/thunderace/mqtt_lua.git"
}

description = {
  summary = "Lua MQTT client",
  detailed = [[
    MQTT (Message Queue Telemetry Transport) client-side implementation ...
      http://mqtt.org
    Based on the "MQTT protocol specification 3.1" ...
      https://www.ibm.com/developerworks/webservices/library/ws-mqtt
  ]],

  homepage = "https://geekscape.github.com/mqtt_lua",
  license = "AGPLv3 or commercial",
  maintainer = "thunderace"
}

dependencies = {
  "lua >= 5.1",
  "luasocket >= 2.0.2"
}

build = {
  type = "builtin",

  modules = {
    mqtt_library   = "lua/mqtt.lua",
    mqtt_publish   = "lua/mqtt/examples/mqtt_publish.lua",
    mqtt_subscribe = "lua/mqtt/examples/mqtt_subscribe.lua",
    mqtt_test      = "lua/mqtt/examples/mqtt_test.lua",
    utility        = "lua/mqtt/utility.lua"
  }
}
