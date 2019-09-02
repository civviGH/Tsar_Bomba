require("custom_defines")

require("prototypes/ammo")
require("prototypes/category")
require("prototypes/recipe")
require("prototypes/projectile")
require("prototypes/explosion")
require("prototypes/turret")
require("prototypes/shortcut")

bflare = table.deepcopy(data.raw["artillery-flare"]["artillery-flare"])
bflare.name = "bflare"
bflare.shots_per_flare = 0
bflare.early_death_ticks = 1

chart_remote = table.deepcopy(data.raw.capsule["artillery-targeting-remote"])
chart_remote.name = "bremote"
chart_remote.capsule_action = {type = "artillery-remote", flare = "bflare"}

data:extend({chart_remote, bflare})
