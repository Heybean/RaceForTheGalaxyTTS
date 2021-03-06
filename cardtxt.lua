-- source is from Keldon AI github. Using this instead of making my own database to reduce risk of errors from data entry
cardtxt = [[
# cards.txt
#
# N:card name
# T:type:cost:vp
#   Type is 1: world, 2: development
# E@e0:n0@e1:n1[...]
#   Number of this card introduced at each expansion level
# G:goodtype
#   Only valid for worlds, and optional there
# F:flags
#   START world, MILITARY, WINDFALL, REBEL, ALIEN, IMPERIUM, etc
# P:phase:code:value:times
#   Times is only relevant for certain consume powers
# V:value:type:name
#   Extra victory points for 6-cost developments

# Action cards

N:Explore (+5)
T:0:0:0
E@0:1
F:ACTION_CARD
P:1:DRAW:5:0

N:Explore (+1,+1)
T:0:0:0
E@0:1
F:ACTION_CARD
P:1:DRAW:1:0
P:1:KEEP:1:0

N:Develop
T:0:0:0
E@0:1
F:ACTION_CARD
P:2:REDUCE:1:0

N:Settle
T:0:0:0
E@0:1
F:ACTION_CARD
P:3:DRAW_AFTER:1:0

N:Consume ($)
T:0:0:0
E@0:1
F:ACTION_CARD
P:4:TRADE_ACTION:0:0

N:Consume (x2)
T:0:0:0
E@0:1
F:ACTION_CARD
P:4:DOUBLE_VP:0:0

N:Produce
T:0:0:0
E@0:1
F:ACTION_CARD
P:5:WINDFALL_ANY:0:0

#
# Promo home worlds
#

N:Gateway Station
T:1:0:0
E@0:1
#E:1:1:1:1:1
G:ANY
F:PROMO | START | START_BLUE

N:Abandoned Mine Squatters
T:1:0:0
E@0:1
#E:1:1:1:1:1
G:ANY
F:PROMO | START | START_RED

N:Terraforming Colonists
T:1:0:0
E@0:1
#E:1:1:1:1:1
F:PROMO | START | START_BLUE

N:Galactic Trade Emissaries
T:1:0:0
E@0:1
#E:1:1:1:1:1
F:PROMO | START | START_RED

N:Industrial Robots
T:1:0:0
E@0:1
#E:1:1:1:1:1
F:PROMO | START | START_BLUE

N:Star Nomad Raiders
T:1:0:0
E@0:1
#E:1:1:1:1:1
F:PROMO | START | START_RED

#
# Base game
#

N:Old Earth
T:1:3:2
E@0:1
#E:1:1:1:1:1
F:START | START_BLUE
P:4:TRADE_ANY:1:0
P:4:CONSUME_ANY | GET_VP:1:2

N:Epsilon Eridani
T:1:2:1
E@0:1
#E:1:1:1:1:1
F:START | START_RED
P:3:EXTRA_MILITARY:1:0
P:4:CONSUME_ANY | GET_CARD | GET_VP:1:1

N:Alpha Centauri
T:1:2:0
E@0:1
#E:1:1:1:1:1
G:RARE
F:START | START_BLUE | WINDFALL
P:3:REDUCE | RARE:1:0
P:3:EXTRA_MILITARY | RARE:1:0

N:New Sparta
T:1:2:1
E@0:1
#E:1:1:1:1:1
F:START | START_RED | MILITARY
P:3:EXTRA_MILITARY:2:0

N:Earth's Lost Colony
T:1:2:1
E@0:1
#E:1:1:1:1:1
G:NOVELTY
F:START | START_BLUE
P:4:CONSUME_ANY | GET_VP:1:1
P:5:PRODUCE:0:0

N:Rebel Fuel Cache
T:1:1:1
E@0:1
#E:1:1:1:1:1
G:RARE
F:WINDFALL | MILITARY | REBEL

N:Public Works
T:2:1:1
E@0:2
#E:2:2:2:2:2
P:2:DRAW_AFTER:1:0
P:4:CONSUME_ANY | GET_VP:1:1

N:Gem World
T:1:2:1
E@0:1
#E:1:1:1:1:1
G:NOVELTY
P:5:PRODUCE:0:0
P:5:DRAW_IF:1:0

N:Colony Ship
T:2:2:1
E@0:2
#E:2:2:2:2:2
P:3:DISCARD | REDUCE_ZERO:0:0

N:Comet Zone
T:1:3:2
E@0:1
#E:1:1:1:1:1
G:RARE
P:5:PRODUCE:0:0
P:5:DRAW_IF:1:0

N:Expedition Force
T:2:1:1
E@0:2
#E:2:2:2:2:2
P:1:DRAW:1:0
P:3:EXTRA_MILITARY:1:0

N:Mining Robots
T:2:2:1
E@0:2
#E:2:2:2:2:2
P:3:REDUCE | RARE:1:0
P:5:WINDFALL_RARE:0:0

N:Rebel Miners
T:1:2:1
E@0:1
#E:1:1:1:1:1
G:RARE
F:MILITARY | REBEL
P:5:PRODUCE:0:0

N:Export Duties
T:2:1:1
E@0:2
#E:2:2:2:2:2
P:4:TRADE_ANY:1:0

N:Former Penal Colony
T:1:2:1
E@0:1
#E:1:1:1:1:1
G:NOVELTY
F:WINDFALL | MILITARY
P:3:EXTRA_MILITARY:1:0

N:Malevolent Lifeforms
T:1:4:2
E@0:1
#E:1:1:1:1:1
G:GENE
F:MILITARY
P:1:DRAW:1:0
P:5:PRODUCE:0:0

N:New Military Tactics
T:2:1:1
E@0:2
#E:2:2:2:2:2
P:3:DISCARD | EXTRA_MILITARY:3:0

N:Space Marines
T:2:2:1
E@0:2
#E:2:2:2:2:2
P:3:EXTRA_MILITARY:2:0

N:Contact Specialist
T:2:1:1
E@0:2@1:1
#E:2:3:3:3:2
P:3:EXTRA_MILITARY:-1:0
P:3:PAY_MILITARY:1:0

N:Avian Uplift Race
T:1:2:2
E@0:1
#E:1:1:1:1:1
G:GENE
F:WINDFALL | MILITARY | UPLIFT | CHROMO

N:Spice World
T:1:2:1
E@0:1
#E:1:1:1:1:1
G:NOVELTY
P:4:TRADE_NOVELTY:2:0
P:5:PRODUCE:0:0

N:Lost Species Ark World
T:1:5:3
E@0:1
#E:1:1:1:1:1
G:GENE
P:5:PRODUCE:0:0
P:5:DRAW_IF:2:0

N:New Vinland
T:1:2:1
E@0:1
#E:1:1:1:1:1
G:NOVELTY
P:4:CONSUME_ANY | GET_2_CARD:1:1
P:5:PRODUCE:0:0

N:Artist Colony
T:1:1:1
E@0:1
#E:1:1:1:1:1
G:NOVELTY
P:5:PRODUCE:0:0

N:Alien Robotic Factory
T:1:6:5
E@0:1
#E:1:1:1:1:1
G:ALIEN
F:ALIEN
P:5:PRODUCE:0:0

N:Plague World
T:1:3:0
E@0:1
#E:1:1:1:1:1
G:GENE
P:4:CONSUME_GENE | GET_CARD | GET_VP:1:1
P:5:PRODUCE:0:0

N:Distant World
T:1:4:2
E@0:1
#E:1:1:1:1:1
G:GENE
P:4:TRADE_NOVELTY:3:0
P:5:PRODUCE:0:0

N:Rebel Outpost
T:1:5:5
E@0:1
#E:1:1:1:1:1
F:REBEL | MILITARY
P:3:EXTRA_MILITARY:1:0

N:Rebel Warrior Race
T:1:3:2
E@0:1
#E:1:1:1:1:1
G:GENE
F:REBEL | WINDFALL | MILITARY
P:3:EXTRA_MILITARY:1:0

N:Rebel Underground
T:1:3:4
E@0:1
#E:1:1:1:1:1
F:REBEL | MILITARY
P:5:DRAW:1:0

N:New Survivalists
T:1:1:1
E@0:1
#E:1:1:1:1:1
G:NOVELTY
F:MILITARY
P:4:CONSUME_NOVELTY | GET_CARD:1:1
P:5:PRODUCE:0:0

N:Outlaw World
T:1:1:1
E@0:1
#E:1:1:1:1:1
F:MILITARY
P:3:EXTRA_MILITARY:1:0
P:4:CONSUME_ANY | GET_CARD | GET_VP:1:1

N:Lost Alien Battle Fleet
T:1:6:4
E@0:1
#E:1:1:1:1:1
G:ALIEN
F:ALIEN | MILITARY
P:3:EXTRA_MILITARY:3:0
P:5:PRODUCE:0:0

N:Diversified Economy
T:2:4:2
E@0:2
#E:2:2:2:2:2
P:4:CONSUME_3_DIFF | GET_VP:3:1
P:5:DRAW_DIFFERENT:1:0

N:Consumer Markets
T:2:5:3
E@0:2
#E:2:2:2:2:2
P:4:CONSUME_NOVELTY | GET_VP:1:3
P:5:DRAW_EACH_NOVELTY:1:0

N:Mining Conglomerate
T:2:3:2
E@0:2
#E:2:2:2:2:2
P:4:TRADE_RARE:1:0
P:4:CONSUME_RARE | GET_VP:1:2
P:5:DRAW_MOST_RARE:2:0

N:Research Labs
T:2:4:2
E@0:2@2:1
#E:2:2:3:3:2
P:1:KEEP:1:0
P:4:CONSUME_GENE | GET_VP:1:1
P:5:DRAW_EACH_ALIEN:1:0

N:Deficit Spending
T:2:2:1
E@0:2
#E:2:2:2:2:2
P:4:DISCARD_HAND | GET_VP:1:2

N:Investment Credits
T:2:1:1
E@0:2
#E:2:2:2:2:2
P:2:REDUCE:1:0

N:Pan-Galactic League
T:2:6:0
E@0:1
#E:1:1:1:1:1
P:3:EXTRA_MILITARY:-1:0
P:5:DRAW_WORLD_GENE:1:0
V:2:GENE_PRODUCTION:N/A
V:2:GENE_WINDFALL:N/A
V:1:MILITARY:N/A
V:3:NAME:Contact Specialist

N:Mining League
T:2:6:0
E@0:1
#E:1:1:1:1:1
P:4:CONSUME_RARE | CONSUME_TWO | GET_VP:3:1
P:5:WINDFALL_RARE:0:0
V:2:RARE_PRODUCTION:N/A
V:1:RARE_WINDFALL:N/A
V:2:NAME:Mining Robots
V:2:NAME:Mining Conglomerate

N:Free Trade Association
T:2:6:0
E@0:1
#E:1:1:1:1:1
P:4:CONSUME_NOVELTY | GET_CARD | GET_VP:1:3
P:5:WINDFALL_NOVELTY:0:0
V:2:NOVELTY_PRODUCTION:N/A
V:1:NOVELTY_WINDFALL:N/A
V:2:NAME:Consumer Markets
V:2:NAME:Expanding Colony

N:Alien Tech Institute
T:2:6:0
E@0:1
#E:1:1:1:1:1
F:ALIEN
P:3:REDUCE | ALIEN:2:0
P:3:EXTRA_MILITARY | ALIEN:2:0
V:3:ALIEN_PRODUCTION:N/A
V:2:ALIEN_WINDFALL:N/A
V:2:ALIEN_FLAG:N/A

N:Galactic Survey: SETI
T:2:6:0
E@0:1
#E:1:1:1:1:1
P:1:DRAW:2:0
V:1:DEVEL_EXPLORE:N/A
V:2:WORLD_EXPLORE:N/A
V:1:WORLD:N/A

N:Galactic Federation
T:2:6:0
E@0:1
#E:1:1:1:1:1
P:2:REDUCE:2:0
V:2:SIX_DEVEL:N/A
V:1:DEVEL:N/A

N:Refugee World
T:1:0:1
E@0:1
#E:1:1:1:1:1
G:NOVELTY
F:WINDFALL
P:3:EXTRA_MILITARY:-1:0

N:Empath World
T:1:1:1
E@0:1
#E:1:1:1:1:1
G:GENE
F:WINDFALL
P:3:EXTRA_MILITARY:-1:0

N:Galactic Resort
T:1:3:2
E@0:1
#E:1:1:1:1:1
G:NOVELTY
F:WINDFALL
P:4:CONSUME_ANY | GET_CARD | GET_VP:1:1

N:Pre-Sentient Race
T:1:2:1
E@0:1
#E:1:1:1:1:1
G:GENE
F:WINDFALL

N:Deserted Alien Outpost
T:1:4:3
E@0:1
#E:1:1:1:1:1
G:ALIEN
F:ALIEN | WINDFALL

N:Deserted Alien Colony
T:1:5:4
E@0:1
#E:1:1:1:1:1
G:ALIEN
F:ALIEN | WINDFALL

N:Galactic Engineers
T:1:2:1
E@0:1
#E:1:1:1:1:1
P:4:TRADE_ANY:1:0
P:5:WINDFALL_ANY:0:0

N:Black Market Trading World
T:1:2:1
E@0:1
#E:1:1:1:1:1
P:4:TRADE_ACTION | TRADE_NO_BONUS:0:0

N:Merchant World
T:1:4:2
E@0:1
#E:1:1:1:1:1
P:4:TRADE_ANY:2:0
P:4:DISCARD_HAND | GET_VP:1:2

N:Tourist World
T:1:4:2
E@0:1
#E:1:1:1:1:1
P:4:CONSUME_ANY | CONSUME_TWO | GET_VP:3:1

N:Galactic Trendsetters
T:1:5:3
E@0:1
#E:1:1:1:1:1
P:4:CONSUME_ANY | GET_VP:2:1

N:Alien Rosetta Stone World
T:1:3:3
E@0:1
#E:1:1:1:1:1
F:ALIEN
P:3:REDUCE | ALIEN:2:0
P:3:EXTRA_MILITARY | ALIEN:2:0
P:5:WINDFALL_ALIEN:0:0

N:Star Nomad Lair
T:1:1:1
E@0:1
#E:1:1:1:1:1
G:NOVELTY
F:WINDFALL | MILITARY
P:1:DRAW:1:0
P:4:TRADE_THIS:1:0

N:The Last of the Uplift Gnarssh
T:1:1:0
E@0:1
#E:1:1:1:1:1
G:GENE
F:WINDFALL | MILITARY | UPLIFT | CHROMO

N:Alien Robot Sentry
T:1:2:2
E@0:1
#E:1:1:1:1:1
G:ALIEN
F:WINDFALL | MILITARY | ALIEN

N:Pirate World
T:1:3:2
E@0:1
#E:1:1:1:1:1
G:NOVELTY
F:WINDFALL | MILITARY
P:4:TRADE_THIS:3:0

N:Reptilian Uplift Race
T:1:2:2
E@0:1
#E:1:1:1:1:1
G:GENE
F:WINDFALL | MILITARY | UPLIFT | CHROMO

N:Lost Alien Warship
T:1:5:3
E@0:1
#E:1:1:1:1:1
G:ALIEN
F:WINDFALL | MILITARY | ALIEN
P:3:EXTRA_MILITARY:2:0

N:Alien Robot Scout Ship
T:1:4:2
E@0:1
#E:1:1:1:1:1
G:ALIEN
F:WINDFALL | MILITARY | ALIEN
P:3:EXTRA_MILITARY:1:0

N:Runaway Robots
T:1:1:1
E@0:1
#E:1:1:1:1:1
G:RARE
F:WINDFALL | MILITARY
P:5:DRAW_IF:1:0

N:Interstellar Bank
T:2:2:1
E@0:2
#E:2:2:2:2:2
P:2:DRAW:1:0

N:Terraforming Robots
T:2:3:2
E@0:2
#E:2:2:2:2:2
F:TERRAFORMING
P:3:DRAW_AFTER:1:0
P:4:CONSUME_RARE | GET_CARD | GET_VP:1:1

N:Drop Ships
T:2:4:2
E@0:2
#E:2:2:2:2:2
P:3:EXTRA_MILITARY:3:0

N:New Galactic Order
T:2:6:0
E@0:1
#E:1:1:1:1:1
P:3:EXTRA_MILITARY:2:0
V:1:TOTAL_MILITARY:N/A

N:Asteroid Belt
T:1:2:1
E@0:1
#E:1:1:1:1:1
G:RARE
F:WINDFALL

N:Merchant Guild
T:2:6:0
E@0:1
#E:1:1:1:1:1
P:5:DRAW:2:0
V:2:NOVELTY_PRODUCTION:N/A
V:2:RARE_PRODUCTION:N/A
V:2:GENE_PRODUCTION:N/A
V:2:ALIEN_PRODUCTION:N/A
V:1:GOODS_REMAINING:N/A

N:Secluded World
T:1:1:1
E@0:1
#E:1:1:1:1:1
G:NOVELTY
P:4:CONSUME_ANY | GET_CARD:1:1
P:5:PRODUCE:0:0

N:Imperium Armaments World
T:1:3:2
E@0:1
#E:1:1:1:1:1
G:RARE
F:IMPERIUM
P:3:EXTRA_MILITARY:1:0
P:5:PRODUCE:0:0

N:Terraformed World
T:1:5:5
E@0:1
#E:1:1:1:1:1
P:4:CONSUME_ANY | GET_VP:1:1

N:Replicant Robots
T:2:4:2
E@0:2
#E:2:2:2:2:2
P:3:REDUCE:2:0

N:Pilgrimage World
T:1:0:2
E@0:1
#E:1:1:1:1:1
P:4:CONSUME_ALL | GET_VP:1:1

N:Rebel Homeworld
T:1:7:7
E@0:1
#E:1:1:1:1:1
F:MILITARY | REBEL

N:New Economy
T:2:6:0
E@0:1
#E:1:1:1:1:1
P:4:DRAW:1:0
V:2:DEVEL_CONSUME:N/A
V:1:WORLD_CONSUME:N/A

N:Radioactive World
T:1:2:1
E@0:1
#E:1:1:1:1:1
G:RARE
F:WINDFALL

N:Aquatic Uplift Race
T:1:2:2
E@0:1
#E:1:1:1:1:1
G:GENE
F:WINDFALL | MILITARY | UPLIFT | CHROMO

N:Genetics Lab
T:2:2:1
E@0:2
#E:2:2:2:2:2
P:4:TRADE_GENE:1:0
P:5:WINDFALL_GENE:0:0

N:Bio-Hazard Mining World
T:1:2:0
E@0:1
#E:1:1:1:1:1
G:RARE
P:4:TRADE_GENE:2:0
P:5:PRODUCE:0:0

N:Deserted Alien Library
T:1:6:5
E@0:1
#E:1:1:1:1:1
G:ALIEN
F:WINDFALL | ALIEN

N:Destroyed World
T:1:1:0
E@0:1
#E:1:1:1:1:1
G:RARE
F:WINDFALL

N:Galactic Renaissance
T:2:6:0
E@0:1
#E:1:1:1:1:1
P:1:DRAW:2:0
P:1:KEEP:1:0
V:1:THREE_VP:N/A
V:3:NAME:Research Labs
V:3:NAME:Galactic Trendsetters
V:3:NAME:Artist Colony

N:Blaster Gem Mines
T:1:3:2
E@0:1
#E:1:1:1:1:1
G:RARE
F:WINDFALL
P:3:EXTRA_MILITARY:1:0

N:Gambling World
T:1:1:1
E@0:1@2:-1
#E:1:1:0:0:1
P:4:CONSUME_ANY | GET_VP:1:1
P:4:DRAW_LUCKY:0:0

N:Expanding Colony
T:1:1:1
E@0:1
#E:1:1:1:1:1
P:4:CONSUME_ANY | GET_VP:1:1
P:5:WINDFALL_NOVELTY:0:0

N:Space Port
T:1:2:1
E@0:1
#E:1:1:1:1:1
G:NOVELTY
P:4:TRADE_RARE:2:0
P:5:PRODUCE:0:0

N:Prosperous World
T:1:3:2
E@0:1
#E:1:1:1:1:1
G:NOVELTY
P:4:CONSUME_ANY | GET_VP:1:1
P:5:PRODUCE:0:0

N:New Earth
T:1:5:3
E@0:1
#E:1:1:1:1:1
G:RARE
P:4:CONSUME_ANY | GET_CARD | GET_VP:1:1
P:5:PRODUCE:0:0

N:Rebel Base
T:1:6:6
E@0:1
#E:1:1:1:1:1
F:MILITARY | REBEL

N:Galactic Imperium
T:2:6:0
E@0:1
#E:1:1:1:1:1
F:IMPERIUM
P:3:EXTRA_MILITARY | AGAINST_REBEL:4:0
V:2:REBEL_MILITARY:N/A
V:1:MILITARY:N/A

N:Trade League
T:2:6:0
E@0:1
#E:1:1:1:1:1
P:4:TRADE_ANY:1:0
P:4:TRADE_ACTION:0:0
V:2:DEVEL_TRADE:N/A
V:1:WORLD_TRADE:N/A

N:Mining World
T:1:3:2
E@0:1
#E:1:1:1:1:1
G:RARE
P:5:PRODUCE:0:0
P:5:DRAW_IF:1:0

#
# First expansion: The Gathering Storm
#

N:Separatist Colony
T:1:2:1
E@1:1
#E:0:1:1:1:0
F:START | START_RED
P:1:DRAW:2:0
P:3:EXTRA_MILITARY:1:0

N:Ancient Race
T:1:2:1
E@1:1
#E:0:1:1:1:0
G:GENE
F:START | START_BLUE | WINDFALL | STARTHAND_3

N:Damaged Alien Factory
T:1:3:2
E@1:1
#E:0:1:1:1:0
G:ALIEN
F:START | START_RED | MILITARY | ALIEN
P:5:DISCARD | PRODUCE:0:0

N:Doomed World
T:1:1:-1
E@1:1
#E:0:1:1:1:0
F:START | START_BLUE
P:1:DRAW:1:0
P:3:DISCARD | REDUCE_ZERO:0:0

N:Terraforming Guild
T:2:6:0
E@1:1
#E:0:1:1:1:0
F:TERRAFORMING
P:3:DRAW_AFTER:1:0
P:5:WINDFALL_ANY:0:0
V:2:NOVELTY_WINDFALL:N/A
V:2:RARE_WINDFALL:N/A
V:2:GENE_WINDFALL:N/A
V:2:ALIEN_WINDFALL:N/A
V:2:TERRAFORMING_FLAG:N/A

N:Galactic Genome Project
T:2:6:0
E@1:1
#E:0:1:1:1:0
P:4:CONSUME_GENE | CONSUME_TWO | GET_VP:3:1
V:2:GENE_PRODUCTION:N/A
V:2:GENE_WINDFALL:N/A
V:3:NAME:Genetics Lab

N:Space Mercenaries
T:2:1:0
E@1:2
#E:0:2:2:2:0
P:3:EXTRA_MILITARY:1:0
P:3:MILITARY_HAND:2:0

N:Improved Logistics
T:2:3:2
E@1:2
#E:0:2:2:2:0
P:3:PLACE_TWO:0:0

N:Deserted Alien World
T:1:1:2
E@1:1
#E:0:1:1:1:0
F:ALIEN
P:1:DRAW:1:0
P:3:REDUCE | ALIEN:2:0
P:3:EXTRA_MILITARY | ALIEN:2:0

N:Rebel Colony
T:1:4:4
E@1:1
#E:0:1:1:1:0
F:MILITARY | REBEL
P:4:CONSUME_ANY | GET_VP:1:1

N:Clandestine Uplift Lab
T:1:3:2
E@1:1
#E:0:1:1:1:0
F:MILITARY | UPLIFT | CHROMO
P:1:DRAW:1:0
P:4:TRADE_GENE | TRADE_BONUS_CHROMO:0:0
P:4:CONSUME_ANY | GET_VP | GET_CARD:1:1

N:Imperium Lords
T:2:6:0
E@1:1
#E:0:1:1:1:0
F:IMPERIUM
P:5:DRAW_MILITARY:1:0
V:2:IMPERIUM_FLAG:N/A
V:1:MILITARY:N/A

N:Smuggling Lair
T:1:1:1
E@1:1
#E:0:1:1:1:0
G:RARE
F:MILITARY | WINDFALL
P:4:CONSUME_ANY | GET_2_CARD:1:1

N:Volcanic World
T:1:2:1
E@1:1
#E:0:1:1:1:0
G:RARE
P:5:PRODUCE:0:0

N:Rebel Sympathizers
T:1:1:1
E@1:1
#E:0:1:1:1:0
G:NOVELTY
F:MILITARY | REBEL | WINDFALL
P:5:DRAW_IF:1:0

N:Galactic Bazaar
T:1:3:2
E@1:1
#E:0:1:1:1:0
G:NOVELTY
F:WINDFALL
P:4:TRADE_NOVELTY:1:0
P:4:DISCARD_HAND | GET_VP:1:1

N:Galactic Studios
T:1:5:3
E@1:1
#E:0:1:1:1:0
G:NOVELTY
P:4:CONSUME_ANY | GET_VP | GET_CARD:1:1
P:5:PRODUCE:0:0
P:5:DRAW_IF:1:0

N:Alien Toy Shop
T:1:3:1
E@1:1
#E:0:1:1:1:0
G:ALIEN
F:WINDFALL | ALIEN
P:4:CONSUME_ALIEN | CONSUME_THIS | GET_VP:2:1

N:Hive World
T:1:3:2
E@1:1
#E:0:1:1:1:0
G:GENE
F:MILITARY
P:5:PRODUCE:0:0

#
# Second expansion: Rebel vs Imperium
#

N:Rebel Cantina
T:1:2:0
E@2:1
#E:0:0:1:1:0
F:START | START_RED | REBEL
P:3:PAY_MILITARY:0:0
P:5:DRAW_REBEL:1:0

N:Galactic Developers
T:1:2:1
E@2:1
#E:0:0:1:1:0
F:START | START_BLUE
P:2:DRAW:1:0
P:4:CONSUME_ANY | GET_VP:1:1

N:Imperium Warlord
T:1:2:2
E@2:1
#E:0:0:1:1:0
F:START | START_RED | IMPERIUM
P:1:DRAW:1:0
P:3:EXTRA_MILITARY:1:0
P:3:EXTRA_MILITARY | AGAINST_REBEL:1:0

N:Rebel Stronghold
T:1:9:9
E@2:1
#E:0:0:1:1:0
F:REBEL | MILITARY | PRESTIGE

N:Alien Data Repository
T:1:7:6
E@2:1
#E:0:0:1:1:0
G:ALIEN
F:ALIEN
P:1:DISCARD_ANY:0:0
P:5:PRODUCE:0:0

N:Alien Monolith
T:1:8:8
E@2:1
#E:0:0:1:1:0
G:ALIEN
F:ALIEN | WINDFALL | MILITARY | PRESTIGE

N:Imperium Blaster Gem Consortium
T:1:6:4
E@2:1
#E:0:0:1:1:0
G:RARE
F:IMPERIUM | PRESTIGE
P:3:EXTRA_MILITARY:1:0
P:4:CONSUME_RARE | GET_VP | GET_2_CARD:1:1
P:5:PRODUCE:0:0

N:Gene Designers
T:1:6:3
E@2:1
#E:0:0:1:1:0
G:GENE
P:4:CONSUME_GENE | GET_VP | GET_CARD:1:3
P:5:PRODUCE:0:0

N:Imperium Seat
T:2:6:0
E@2:1
#E:0:0:1:1:0
F:IMPERIUM
P:3:EXTRA_MILITARY | AGAINST_REBEL:1:0
P:3:TAKEOVER_REBEL:0:0
V:2:IMPERIUM_FLAG:N/A
V:2:REBEL_MILITARY:N/A

N:Rebel Alliance
T:2:6:0
E@2:1
#E:0:0:1:1:0
F:REBEL
P:3:PAY_MILITARY | AGAINST_REBEL:2:0
P:3:TAKEOVER_IMPERIUM:2:0
V:2:REBEL_FLAG:N/A
V:1:MILITARY:N/A

N:Uplift Code
T:2:6:0
E@2:1
#E:0:0:1:1:0
F:UPLIFT | PRESTIGE
P:5:DRAW_CHROMO:2:0
V:3:CHROMO_FLAG:N/A
V:2:UPLIFT_FLAG:N/A

N:Galactic Exchange
T:2:6:0
E@2:1
#E:0:0:1:1:0
P:4:CONSUME_N_DIFF | GET_VP | GET_CARD:1:1
V:0:KIND_GOOD:N/A
V:3:NAME:Diversified Economy

N:Galactic Bankers
T:2:6:0
E@2:1
#E:0:0:1:1:0
F:PRESTIGE
P:2:DRAW:1:0
P:4:DISCARD_HAND | GET_VP:1:2
V:2:NAME:Interstellar Bank
V:2:NAME:Investment Credits
V:2:NAME:Gambling World
V:1:DEVEL:N/A

N:Prospecting Guild
T:2:6:0
E@2:1
#E:0:0:1:1:0
P:1:DISCARD_ANY:0:0
P:4:TRADE_ANY:1:0
P:4:CONSUME_RARE | GET_VP | GET_CARD:1:1
V:2:RARE_PRODUCTION:N/A
V:2:RARE_WINDFALL:N/A
V:1:WORLD:N/A
V:1:TERRAFORMING_FLAG:N/A

N:Pan-Galactic Research
T:2:6:4
E@2:1
#E:0:0:1:1:0
F:DISCARD_TO_12
P:1:DRAW:2:0
P:1:KEEP:1:0
P:2:REDUCE:1:0
P:5:DRAW:2:0

N:Rebel Pact
T:2:1:1
E@2:2
#E:0:0:2:2:0
F:REBEL
P:1:DISCARD_ANY:0:0
P:3:PAY_DISCOUNT:2:0
P:3:TAKEOVER_DEFENSE:0:0

N:Imperium Cloaking Technology
T:2:1:1
E@2:2
#E:0:0:2:2:0
F:IMPERIUM
P:3:DISCARD | CONQUER_SETTLE | NO_TAKEOVER:2:0
P:3:DISCARD | TAKEOVER_MILITARY:0:0

N:Imperium Troops
T:2:1:1
E@2:2
#E:0:0:2:2:0
F:IMPERIUM
P:3:EXTRA_MILITARY:1:0
P:3:EXTRA_MILITARY | AGAINST_REBEL:1:0

N:R&D Crash Program
T:2:1:0
E@2:2
#E:0:0:2:2:0
P:2:DISCARD_REDUCE:3:0
P:4:DISCARD_HAND | GET_CARD:1:1

N:Mercenary Fleet
T:2:3:1
E@2:2
#E:0:0:2:2:0
P:3:EXTRA_MILITARY:2:0
P:3:MILITARY_HAND:2:0

N:Galactic Advertisers
T:2:3:2
E@2:2
#E:0:0:2:2:0
P:4:TRADE_ANY:1:0
P:4:DRAW:1:0

N:Galactic Salon
T:2:4:2
E@2:2
#E:0:0:2:2:0
P:4:VP:1:0

N:Primitive Rebel World
T:1:1:1
E@2:1
#E:0:0:1:1:0
G:NOVELTY
F:REBEL | MILITARY | WINDFALL
P:3:MILITARY_HAND:1:0

N:Devolved Uplift Race
T:1:1:1
E@2:1
#E:0:0:1:1:0
G:NOVELTY
F:UPLIFT | MILITARY | CHROMO
P:5:PRODUCE:0:0

N:Smuggling World
T:1:1:0
E@2:1
#E:0:0:1:1:0
G:NOVELTY
P:1:DISCARD_ANY:0:0
P:3:REDUCE | NOVELTY:1:0
P:3:EXTRA_MILITARY | NOVELTY:1:0
P:5:PRODUCE:0:0

N:Dying Colony
T:1:0:0
E@2:1
#E:0:0:1:1:0
G:NOVELTY
F:WINDFALL
P:4:CONSUME_ANY | GET_VP:1:1

N:Insect Uplift Race
T:1:2:2
E@2:1
#E:0:0:1:1:0
G:GENE
F:WINDFALL | UPLIFT | MILITARY | CHROMO

N:Abandoned Alien Uplift Camp
T:1:1:2
E@2:1
#E:0:0:1:1:0
F:ALIEN | UPLIFT
P:1:DRAW:1:0
P:3:REDUCE | GENE:2:0
P:3:EXTRA_MILITARY | GENE:2:0

N:Blaster Runners
T:1:1:1
E@2:1
#E:0:0:1:1:0
F:MILITARY
P:1:DISCARD_ANY:0:0
P:3:EXTRA_MILITARY:1:0

N:Trading Outpost
T:1:1:1
E@2:1
#E:0:0:1:1:0
P:1:DISCARD_ANY:0:0
P:4:TRADE_ANY:2:0

N:Gambling World
T:1:1:1
E@2:1
#E:0:0:1:1:0
P:4:CONSUME_ANY | GET_VP:1:1
P:4:ANTE_CARD:0:0

N:Alien Uplift Center
T:1:5:4
E@2:1
#E:0:0:1:1:0
G:ALIEN
F:ALIEN | UPLIFT | MILITARY | WINDFALL
P:1:DRAW:1:0
P:3:REDUCE | GENE:2:0
P:3:EXTRA_MILITARY | GENE:2:0

N:Universal Symbionts
T:1:3:1
E@2:1
#E:0:0:1:1:0
G:GENE
F:WINDFALL
P:4:CONSUME_ANY | GET_VP:1:1
P:5:WINDFALL_GENE | NOT_THIS:0:0

N:Interstellar Prospectors
T:1:3:2
E@2:1
#E:0:0:1:1:0
G:RARE
P:1:DRAW:1:0
P:5:PRODUCE:0:0
P:5:WINDFALL_RARE:0:0

N:Rebel Convict Mines
T:1:2:1
E@2:1
#E:0:0:1:1:0
G:RARE
F:MILITARY | WINDFALL | REBEL
P:3:MILITARY_HAND:1:0

N:Gem Smugglers
T:1:3:1
E@2:1
#E:0:0:1:1:0
G:RARE
F:WINDFALL
P:1:DISCARD_ANY:0:0
P:3:REDUCE | RARE:1:0
P:3:EXTRA_MILITARY | RARE:1:0

N:Hidden Fortress
T:1:5:3
E@2:1
#E:0:0:1:1:0
F:MILITARY | GAME_END_14
P:3:EXTRA_MILITARY | PER_MILITARY:1:0

#
# Third expansion: The Brink of War
#

N:Galactic Scavengers
T:1:2:0
E@3:1
#E:0:0:0:1:0
G:NOVELTY
F:WINDFALL | START | START_BLUE | START_SAVE
P:2:SAVE_COST:1:0
P:3:SAVE_COST:1:0
P:5:TAKE_SAVED:0:0

N:Uplift Mercenary Force
T:1:2:0
E@3:1
#E:0:0:0:1:0
F:START | START_RED | UPLIFT | CHROMO
P:1:DRAW:1:0
P:3:EXTRA_MILITARY | PER_CHROMO:1:0
P:3:MILITARY_HAND:1:0

N:Alien Research Team
T:1:2:1
E@3:1
#E:0:0:0:1:0
F:START | START_BLUE | ALIEN
P:1:DRAW:2:0
P:3:REDUCE | ALIEN:1:0
P:3:PAY_MILITARY | ALIEN:0:0
P:4:CONSUME_ALIEN | GET_PRESTIGE:1:1

N:Rebel Freedom Fighters
T:1:3:1
E@3:1
#E:0:0:0:1:0
F:START | START_RED | MILITARY | REBEL
P:1:DRAW:1:0
P:2:PRESTIGE_REBEL:1:0
P:3:EXTRA_MILITARY:1:0
P:3:EXTRA_MILITARY | IF_IMPERIUM:-2:0
P:3:PRESTIGE_REBEL:1:0

N:Imperium Capital
T:1:6:6
E@3:1
#E:0:0:0:1:0
F:IMPERIUM | PRESTIGE
P:3:PRESTIGE_REBEL:1:0
P:4:CONSUME_ANY | CONSUME_TWO | GET_PRESTIGE:2:1

N:Alien Oort Cloud Refinery
T:1:0:1
E@3:1
#E:0:0:0:1:0
G:ANY
F:ALIEN | WINDFALL
P:4:NO_TRADE:0:0

N:Golden Age of Terraforming
T:2:6:0
E@3:1
#E:0:0:0:1:0
F:TERRAFORMING | PRESTIGE
P:2:CONSUME_RARE:2:0
P:3:CONSUME_GENE | REDUCE:3:0
P:3:AUTO_PRODUCE:0:0
V:2:TERRAFORMING_FLAG:N/A
V:1:SIX_DEVEL:N/A
V:1:NOVELTY_PRODUCTION:N/A
V:1:RARE_PRODUCTION:N/A
V:1:GENE_PRODUCTION:N/A
V:1:ALIEN_PRODUCTION:N/A

N:Universal Peace Institute
T:2:6:0
E@3:1
#E:0:0:0:1:0
F:PRESTIGE
P:3:REDUCE:2:0
P:3:EXTRA_MILITARY:-2:0
P:4:CONSUME_ANY | CONSUME_TWO | GET_PRESTIGE | GET_VP | GET_CARD:1:1
V:1:NEGATIVE_MILITARY:N/A
V:1:MILITARY:N/A
V:2:NAME:Pan-Galactic Mediator

N:Interstellar Casus Belli
T:2:4:0
E@3:2
#E:0:0:0:2:0
P:3:TAKEOVER_PRESTIGE:2:0
P:4:CONSUME_PRESTIGE | GET_VP:3:1

N:Imperium Fuel Depot
T:1:3:1
E@3:1
#E:0:0:0:1:0
G:RARE
F:MILITARY | IMPERIUM
P:3:EXPLORE_AFTER:2:0
P:5:PRODUCE:0:0

N:Imperium Invasion Fleet
T:2:5:3
E@3:2
#E:0:0:0:2:0
F:IMPERIUM | PRESTIGE
P:3:EXTRA_MILITARY:3:0
P:3:EXTRA_MILITARY | AGAINST_REBEL:1:0
P:3:DISCARD | CONQUER_SETTLE | PRESTIGE:0:0

N:Uplift Gene Breeders
T:1:3:0
E@3:1
#E:0:0:0:1:0
G:GENE
F:UPLIFT
P:5:PRODUCE:0:0
P:5:PRESTIGE_IF:1:0

N:Pan-Galactic Security Council
T:1:1:1
E@3:1
#E:0:0:0:1:0
F:PRESTIGE
P:1:DRAW:1:0
P:3:PREVENT_TAKEOVER:0:0
P:4:DISCARD_HAND | CONSUME_TWO | GET_PRESTIGE:1:1

N:Imperium Planet Buster
T:2:9:9
E@3:1
#E:0:0:0:1:0
F:IMPERIUM | PRESTIGE
P:3:EXTRA_MILITARY:3:0
P:3:TAKEOVER_MILITARY | DESTROY:2:0

N:Federation Capital
T:1:3:0
E@3:1
#E:0:0:0:1:0
P:2:PRESTIGE_SIX:1:0
P:4:CONSUME_ANY | GET_PRESTIGE:1:1
V:1:PRESTIGE:N/A

N:Mining Mole Uplift Race
T:1:3:2
E@3:1
#E:0:0:0:1:0
G:RARE
F:UPLIFT | CHROMO
P:1:DRAW:1:0
P:3:REDUCE | RARE:1:0
P:5:PRODUCE:0:0

N:Pan-Galactic Mediator
T:2:1:1
E@3:2
#E:0:0:0:2:0
F:PRESTIGE
P:1:DRAW:1:0
P:3:EXTRA_MILITARY:-1:0
P:3:PAY_PRESTIGE:1:0

N:Alien Departure Point
T:1:9:9
E@3:1
#E:0:0:0:1:0
G:ALIEN
F:ALIEN | PRESTIGE
P:1:DISCARD_PRESTIGE:1:0
P:5:PRODUCE:0:0

N:Rebel Troops
T:2:2:1
E@3:2
#E:0:0:0:2:0
F:REBEL
P:3:EXTRA_MILITARY:1:0
P:3:MILITARY_HAND:1:0
P:4:CONSUME_ANY | GET_2_CARD:1:1

N:Retrofit & Salvage, Inc
T:1:2:1
E@3:1
#E:0:0:0:1:0
G:NOVELTY
F:TAKE_DISCARDS
P:2:REDUCE:1:0
P:5:PRODUCE:0:0

N:Uplift Revolt World
T:1:4:2
E@3:1
#E:0:0:0:1:0
G:GENE
F:MILITARY | WINDFALL | UPLIFT | CHROMO
P:3:EXTRA_MILITARY | PER_CHROMO:1:0

N:Terraforming Engineers
T:2:3:2
E@3:2
#E:0:0:0:2:0
F:TERRAFORMING
P:1:DRAW:1:0
P:3:REDUCE:1:0
P:3:UPGRADE_WORLD:3:0
P:4:CONSUME_ANY | GET_VP:1:1

N:Alien Tourist Attraction
T:1:5:3
E@3:1
#E:0:0:0:1:0
G:NOVELTY
F:ALIEN | WINDFALL | PRESTIGE
P:1:DRAW:1:0
P:4:CONSUME_ANY | GET_VP | GET_2_CARD:1:1

N:Lifeforms, Inc
T:1:3:1
E@3:1
#E:0:0:0:1:0
G:GENE
P:3:CONSUME_GENE | REDUCE:3:0
P:5:PRODUCE:0:0
P:5:WINDFALL_GENE | DISCARD:1:0

N:Rebel Council
T:1:8:8
E@3:1
#E:0:0:0:1:0
F:REBEL | MILITARY | PRESTIGE
P:2:PRESTIGE_REBEL:1:0
P:4:CONSUME_ANY | GET_VP:1:1

N:Galactic Markets
T:2:4:2
E@3:2
#E:0:0:0:2:0
F:PRESTIGE
P:3:DRAW_AFTER:1:0
P:4:CONSUME_ANY | GET_VP:1:3
P:5:DRAW:1:0

N:Alien Booby Trap
T:1:1:1
E@3:1
#E:0:0:0:1:0
F:MILITARY | ALIEN | PRESTIGE
P:3:CONSUME_PRESTIGE | EXTRA_MILITARY:3:1
P:5:WINDFALL_ALIEN | DISCARD:1:0

N:Rebel Sneak Attack
T:2:2:1
E@3:2
#E:0:0:0:2:0
F:REBEL
P:1:DISCARD_ANY:0:0
P:3:DISCARD | PLACE_MILITARY:0:0
P:3:DISCARD | TAKEOVER_IMPERIUM:2:0

N:Pan-Galactic Hologrid
T:2:6:0
E@3:1
#E:0:0:0:1:0
P:1:DISCARD_PRESTIGE:1:0
P:3:DRAW_AFTER:1:0
P:4:TRADE_NOVELTY:2:0
V:2:NOVELTY_PRODUCTION:N/A
V:2:NOVELTY_WINDFALL:N/A
V:2:NAME:Expanding Colony
V:1:WORLD:N/A

N:Alien Burial Site
T:1:2:1
E@3:1
#E:0:0:0:1:0
G:NOVELTY
F:ALIEN | PRESTIGE
P:4:TRADE_NOVELTY:1:0
P:5:PRODUCE:0:0

N:Pan-Galactic Affluence
T:2:6:0
E@3:1
#E:0:0:0:1:0
F:PRESTIGE
P:2:PRESTIGE:1:0
P:4:CONSUME_ANY | CONSUME_TWO | GET_PRESTIGE | GET_VP:1:1
P:5:DRAW_MOST_PRODUCED:1:0
V:1:PRESTIGE:N/A
V:2:NAME:Export Duties
V:2:NAME:Galactic Renaissance
V:2:NAME:Terraformed World

N:Rebel Fuel Refinery
T:1:4:2
E@3:1
#E:0:0:0:1:0
G:RARE
F:REBEL | MILITARY | WINDFALL | PRESTIGE
P:3:CONSUME_RARE | EXTRA_MILITARY:2:0

N:Psi-Crystal World
T:1:5:3
E@3:1
#E:0:0:0:1:0
G:RARE
F:WINDFALL | PRESTIGE | SELECT_LAST
P:1:DRAW:1:0
P:3:EXTRA_MILITARY:-1:0

N:Ravaged Uplift World
T:1:2:-1
E@3:1
#E:0:0:0:1:0
G:GENE
F:WINDFALL | UPLIFT | CHROMO
P:3:PAY_MILITARY | AGAINST_CHROMO:0:0
P:5:PRESTIGE_MOST_CHROMO:1:0

N:Galactic Power Brokers
T:2:5:3
E@3:2
#E:0:0:0:2:0
F:PRESTIGE
P:2:EXPLORE:2:0
P:4:CONSUME_PRESTIGE | GET_3_CARD:1:1

N:Alien Cornucopia
T:2:6:0
E@3:1
#E:0:0:0:1:0
F:ALIEN
P:3:PRODUCE_PRESTIGE:1:0
P:5:DRAW:1:0
V:2:ALIEN_FLAG:N/A
V:1:NOVELTY_PRODUCTION:N/A
V:1:RARE_PRODUCTION:N/A
V:1:GENE_PRODUCTION:N/A

N:Information Hub
T:1:3:2
E@3:1
#E:0:0:0:1:0
G:NOVELTY
F:MILITARY | PRESTIGE
P:1:DISCARD_ANY:0:0
P:2:EXPLORE:1:0
P:5:PRODUCE:0:0

N:Alien Guardian
T:1:9:9
E@3:1
#E:0:0:0:1:0
G:ALIEN
F:ALIEN | MILITARY | WINDFALL | PRESTIGE
P:4:DISCARD_HAND | CONSUME_TWO | GET_PRESTIGE:1:1

N:Universal Exports
T:1:3:2
E@3:1
#E:0:0:0:1:0
G:NOVELTY
P:1:DISCARD_ANY:0:0
P:4:TRADE_ANY:1:0
P:5:PRODUCE:0:0
P:5:DISCARD | WINDFALL_ANY:1:0

N:Black Hole Miners
T:1:4:0
E@3:1
#E:0:0:0:1:0
F:PRESTIGE | DISCARD_TO_12
P:5:DRAW:3:0

#
# Fourth expansion: Alien Artifacts
#

N:Sentient Robots
T:1:1:1
E@4:1
#E:0:0:0:0:1
F:START | START_RED | MILITARY
P:3:REDUCE:1:0
P:3:EXTRA_MILITARY:1:0
P:5:DRAW:1:0

N:Alien Artifact Hunters
T:1:3:1
E@4:1
#E:0:0:0:0:1
F:START | START_BLUE | ALIEN
P:1:DRAW:1:0
P:1:KEEP:1:0
P:4:CONSUME_ALIEN | GET_VP:2:1

N:Rebel Mutineers
T:1:2:0
E@4:1
#E:0:0:0:0:1
G:NOVELTY
F:START | START_RED | MILITARY | REBEL | WINDFALL
P:1:DRAW:1:0
P:3:EXTRA_MILITARY:1:0

N:Uplift Researchers
T:1:2:1
E@4:1
#E:0:0:0:0:1
F:START | START_BLUE | UPLIFT
P:1:DRAW:1:0
P:3:REDUCE:1:0
P:3:PAY_MILITARY | AGAINST_CHROMO:0:0

N:Frontier Capital
T:1:1:1
E@4:1
#E:0:0:0:0:1
F:START | START_RED | MILITARY
P:2:DRAW_AFTER:1:0
P:3:EXTRA_MILITARY:1:0

N:Deep Space Symbionts, Ltd.
T:1:3:1
E@4:1
#E:0:0:0:0:1
G:GENE
F:WINDFALL
P:2:REDUCE:1:0

N:Amphibian Uplift Race
T:1:2:2
E@4:1
#E:0:0:0:0:1
G:GENE
F:MILITARY | WINDFALL | CHROMO | UPLIFT

N:Arboreal Uplift Race
T:1:2:2
E@4:1
#E:0:0:0:0:1
G:GENE
F:MILITARY | WINDFALL | CHROMO | UPLIFT

N:Designer Species, Ultd.
T:1:5:3
E@4:1
#E:0:0:0:0:1
G:GENE
P:4:CONSUME_GENE | CONSUME_TWO | GET_VP:3:1
P:5:PRODUCE:0:0

N:Tranship Point
T:1:0:2
E@4:1
#E:0:0:0:0:1
G:RARE
F:NO_PRODUCE
P:3:REDUCE | RARE:1:0
P:5:SHIFT_RARE:0:0

N:Rebel Gem Smugglers
T:1:2:0
E@4:1
#E:0:0:0:0:1
G:RARE
F:MILITARY | WINDFALL | REBEL
P:3:CONSUME_RARE | EXTRA_MILITARY:2:0
P:5:DRAW_IF:1:0

N:Imperium Blaster Gem Depot
T:1:5:3
E@4:1
#E:0:0:0:0:1
G:RARE
F:MILITARY | WINDFALL | IMPERIUM
P:3:EXTRA_MILITARY:2:0
P:4:TRADE_RARE:1:0

N:Ore-Rich World
T:1:2:1
E@4:1
#E:0:0:0:0:1
G:RARE
F:DISCARD_PRODUCE
P:5:PRODUCE:0:0

N:Jumpdrive Fuel Refinery
T:1:3:2
E@4:1
#E:0:0:0:0:1
G:RARE
P:3:DRAW_AFTER:1:0
P:5:PRODUCE:0:0

N:Self-Repairing Alien Artillery
T:1:4:1
E@4:1
#E:0:0:0:0:1
G:ALIEN
F:MILITARY | ALIEN
P:3:CONSUME_ALIEN | EXTRA_MILITARY:3:0
P:5:PRODUCE:0:0

N:Alien Fuel Refinery
T:1:2:2
E@4:1
#E:0:0:0:0:1
G:ALIEN
F:ALIEN
P:2:REDUCE:1:0
P:4:NO_TRADE:0:0
P:5:PRODUCE:0:0

N:Alien Uplift Chamber
T:1:6:0
E@4:1
#E:0:0:0:0:1
G:ALIEN
F:ALIEN | UPLIFT | WINDFALL
P:3:REDUCE | GENE:2:0
P:3:EXTRA_MILITARY | GENE:2:0
P:5:DRAW:1:0
V:2:UPLIFT_FLAG:N/A

N:Alien Sentinels
T:1:9:9
E@4:1
#E:0:0:0:0:1
G:ALIEN
F:ALIEN | WINDFALL | MILITARY

N:Galactic Survey Headquarters
T:1:2:1
E@4:1
#E:0:0:0:0:1
G:NOVELTY
P:1:DRAW:2:0
P:4:TRADE_THIS:1:0
P:5:PRODUCE:0:0

N:Interstellar Trade Port
T:1:5:3
E@4:1
#E:0:0:0:0:1
G:NOVELTY
P:4:CONSUME_N_DIFF | GET_VP | GET_CARD:1:1
P:5:PRODUCE:0:0

N:Galactic News Hub
T:1:4:2
E@4:1
#E:0:0:0:0:1
G:NOVELTY
F:WINDFALL
P:4:CONSUME_NOVELTY | CONSUME_TWO | GET_VP:3:1
P:5:DRAW_MOST_NOVELTY:1:0

N:Mercenary Guild
T:1:3:2
E@4:1
#E:0:0:0:0:1
G:NOVELTY
F:MILITARY | WINDFALL
P:3:EXTRA_MILITARY:2:0

N:Terraforming Colony
T:1:5:2
E@4:1
#E:0:0:0:0:1
G:NOVELTY
F:WINDFALL | TERRAFORMING
P:4:CONSUME_ANY | GET_VP | GET_2_CARD:1:1
P:4:DISCARD_HAND | GET_VP:1:1

N:Rebel Uplift World
T:1:1:1
E@4:1
#E:0:0:0:0:1
F:MILITARY | REBEL | UPLIFT | CHROMO
P:3:EXTRA_MILITARY | PER_CHROMO:1:0

N:Imperium Fifth Column
T:1:1:0
E@4:1
#E:0:0:0:0:1
F:MILITARY | IMPERIUM
P:3:EXTRA_MILITARY:1:0
P:5:DRAW_IMPERIUM:1:0

N:Imperium Stealth Tactics
T:2:2:1
E@4:2
#E:0:0:0:0:2
F:IMPERIUM
P:3:EXTRA_MILITARY:1:0
P:3:DISCARD | EXTRA_MILITARY:3:0

N:Alien Survey Technology
T:2:1:1
E@4:2
#E:0:0:0:0:2
F:ALIEN
P:1:ORB_MOVEMENT:2:0
P:3:PAY_MILITARY | ALIEN:0:0

N:Alien Research Ship
T:2:4:2
E@4:2
#E:0:0:0:0:2
F:ALIEN | EXTRA_SURVEY
P:1:DRAW:1:0
P:3:REDUCE | ALIEN:1:0
P:3:EXTRA_MILITARY | ALIEN:1:0
P:5:WINDFALL_ALIEN:0:0

N:Imperium Supply Convoy
T:2:3:2
E@4:2
#E:0:0:0:0:2
F:IMPERIUM
P:3:PLACE_LEFTOVER:0:0
P:5:DRAW:1:0

N:Terraforming Project
T:2:3:0
E@4:2
#E:0:0:0:0:2
F:TERRAFORMING
P:3:DISCARD | PLACE_ZERO:0:0
P:5:WINDFALL_RARE:0:0

N:Alien Researchers
T:2:6:0
E@4:1
#E:0:0:0:0:1
F:ALIEN
P:3:REDUCE | ALIEN:3:0
P:3:EXTRA_MILITARY | ALIEN:3:0
P:4:CONSUME_ALIEN | GET_VP:2:1
V:3:NAME:Alien Rosetta Stone World
V:1:ALIEN_FLAG:N/A
V:1:ALIEN_TECHNOLOGY:N/A

N:Terraforming Unlimited
T:2:6:0
E@4:1
#E:0:0:0:0:1
F:TERRAFORMING
P:1:DRAW:1:0
P:3:REDUCE:1:0
P:4:CONSUME_RARE | GET_VP:2:1
V:2:TERRAFORMING_FLAG:N/A
V:3:NAME:Terraformed World
V:1:NONMILITARY_WORLD:N/A
V:1:ALIEN_SCIENCE:N/A

N:Uplift Alliance
T:2:6:0
E@4:1
#E:0:0:0:0:1
F:UPLIFT
P:3:REDUCE | GENE:2:0
P:3:EXTRA_MILITARY | GENE:2:0
P:5:WINDFALL_GENE:0:0
V:2:UPLIFT_FLAG:N/A
V:2:GENE_PRODUCTION:N/A
V:2:GENE_WINDFALL:N/A
V:1:ALIEN_UPLIFT:N/A

N:Imperium War Faction
T:2:6:0
E@4:1
#E:0:0:0:0:1
F:IMPERIUM
P:3:CONSUME_RARE | EXTRA_MILITARY:2:0
P:5:DRAW_EACH_RARE:1:0
V:2:IMPERIUM_FLAG:N/A
V:3:NAME:Blaster Gem Mines
V:1:MILITARY:N/A

N:Galactic Expansionists
T:2:6:0
E@4:1
#E:0:0:0:0:1
P:2:DRAW:1:0
P:3:DRAW_AFTER:1:0
P:4:CONSUME_ANY | GET_VP:1:1
V:1:DEVEL:N/A
V:1:NOVELTY_PRODUCTION:N/A
V:1:RARE_PRODUCTION:N/A
V:1:GENE_PRODUCTION:N/A
V:1:ALIEN_PRODUCTION:N/A

N:Wormhole Prospectors
T:2:6:0
E@4:1
#E:0:0:0:0:1
P:3:FLIP_ZERO:0:0
P:4:TRADE_ANY:2:0
P:4:DISCARD_HAND | GET_VP:1:2
V:2:NONMILITARY_TRADE:N/A
V:1:NONMILITARY_WORLD:N/A
V:1:DEVEL_TRADE:N/A
V:1:WORLD_TRADE:N/A

N:Galactic Investors
T:2:5:3
E@4:2
#E:0:0:0:0:2
P:2:DRAW_AFTER:2:0
P:5:DRAW_5_DEV:1:0

N:Rebel Resistance
T:1:8:0
E@4:1
#E:0:0:0:0:1
F:REBEL | MILITARY
P:5:DRAW_REBEL_MILITARY:1:0
V:2:REBEL_FLAG:N/A

N:Scientific Cruisers
T:2:2:1
E@4:2
#E:0:0:0:0:2
P:1:DRAW:1:0
P:3:REDUCE:1:0
P:3:EXTRA_MILITARY:1:0
P:4:CONSUME_ANY | GET_2_CARD:1:1

#
# Fifth expansion: Xeno Invasion
#

N:Alien First Contact Team
T:1:1:1
E@5:1
F:START | START_RED | ALIEN | MILITARY
P:1:DRAW:1:0
P:3:EXTRA_MILITARY:1:0
P:3:EXTRA_MILITARY | ALIEN:1:0
P:3:EXTRA_MILITARY | XENO:1:0

N:Starry Rift Pioneers
T:1:2:0
E@5:1
G:NOVELTY
F:START | START_BLUE | WINDFALL
P:3:XENO_DEFENSE:1:0
P:5:WINDFALL_ANY:0:0

N:Rebel Cadre
T:1:1:0
E@5:1
F:START | START_RED | MILITARY | REBEL
P:3:EXTRA_MILITARY:1:0
P:4:CONSUME_ANY | GET_2_CARD:1:1

N:Terraforming Surveyors
T:1:2:0
E@5:1
F:START | START_BLUE | TERRAFORMING
P:1:DRAW:2:0
P:4:TRADE_ANY:2:0

N:Anti-Xeno Defense Post
T:1:2:2
E@5:1
F:START | START_RED | MILITARY | ANTI_XENO
P:3:EXTRA_MILITARY:1:0
P:3:XENO_DEFENSE | DISCARD_HAND:1:1
P:5:DRAW:1:0

N:Uplift Descendants
T:1:1:0
E@5:1
G:NOVELTY
F:UPLIFT | CHROMO
P:4:CONSUME_NOVELTY | CONSUME_GENE | CONSUME_TWO | GET_VP:3:1
P:5:PRODUCE:0:0

N:Anti-Xeno Embassy
T:1:2:1
E@5:1
G:NOVELTY
F:ANTI_XENO
P:3:PAY_MILITARY:1:0
P:4:DISCARD_HAND | GET_VP:1:1
P:5:PRODUCE:0:0

N:Novelty Peddlers
T:1:2:1
E@5:1
G:NOVELTY
F:WINDFALL
P:3:EXTRA_MILITARY:-1:0
P:4:TRADE_NOVELTY:2:0
P:4:DISCARD_HAND | GET_VP:1:1

N:Galactic Clearing House
T:1:5:3
E@5:1
G:NOVELTY
F:WINDFALL
P:4:TRADE_ANY:1:0
P:4:CONSUME_N_DIFF | GET_VP:1:1
P:5:DRAW:1:0

N:Rebel Black Market Gangs
T:1:1:0
E@5:1
G:NOVELTY
F:WINDFALL | MILITARY | REBEL
P:3:CONSUME_NOVELTY | EXTRA_MILITARY:1:0
P:4:TRADE_NOVELTY:1:0

N:Xeno Hostage Planet
T:1:5:4
E@5:1
G:NOVELTY
F:WINDFALL | MILITARY | XENO

N:Terraforming Uplift Project
T:1:2:0
E@5:1
G:RARE
F:WINDFALL | TERRAFORMING | UPLIFT | CHROMO
P:4:CONSUME_RARE | CONSUME_GENE | CONSUME_TWO | GET_VP:3:1

N:Corrosive Uplift World
T:1:3:0
E@5:1
G:RARE
F:UPLIFT | CHROMO
P:4:CONSUME_RARE | CONSUME_GENE | CONSUME_TWO | GET_VP:3:1
P:5:PRODUCE:0:0
V:1:CHROMO_FLAG:N/A

N:Imperium Munitions, Inc.
T:1:5:4
E@5:1
G:RARE
F:IMPERIUM
P:3:EXTRA_MILITARY:2:0
P:5:PRODUCE:0:0
P:5:DRAW_IF:1:0

N:Rebel Bunker
T:1:1:0
E@5:1
G:RARE
F:WINDFALL | MILITARY | REBEL
P:1:DRAW:1:0
P:3:XENO_DEFENSE:1:0

N:Xeno-Held Imperium Mine
T:1:2:0
E@5:1
G:RARE
F:MILITARY | IMPERIUM | XENO
P:3:EXTRA_MILITARY | PER_IMPERIUM:1:0
P:5:PRODUCE:0:0

N:Rebel Resistance
T:1:3:1
E@5:1
G:RARE
F:MILITARY | REBEL
P:1:DRAW | PER_REBEL_MILITARY:1:0
P:3:EXTRA_MILITARY | XENO:2:0
P:5:PRODUCE:0:0

N:Anti-Xeno Refugees
T:1:2:0
E@5:1
G:GENE
F:WINDFALL | ANTI_XENO
P:3:EXTRA_MILITARY | XENO:1:0
P:3:CONSUME_ANY | XENO_DEFENSE:2:1

N:Pan-Galactic Disease Center
T:1:3:1
E@5:1
G:GENE
F:DISCARD_PRODUCE
P:3:CONSUME_GENE | XENO_DEFENSE:3:1
P:5:PRODUCE:0:0

N:Adaptable Uplift Race
T:1:4:2
E@5:1
G:GENE
F:WINDFALL | UPLIFT | CHROMO
P:4:CONSUME_ANY | CONSUME_GENE | CONSUME_TWO | GET_VP | GET_2_CARD:2:1

N:Xeno-Infested Uplift World
T:1:2:1
E@5:1
G:GENE
F:WINDFALL | MILITARY | UPLIFT | CHROMO | XENO

N:Xeno Colony
T:1:4:2
E@5:1
G:GENE
F:MILITARY | XENO
P:5:PRODUCE:0:0

N:Uplift Coalition
T:1:4:0
E@5:1
G:GENE
F:WINDFALL | MILITARY | UPLIFT | CHROMO
P:1:DRAW:1:0
P:3:EXTRA_MILITARY | PER_CHROMO:1:0
V:1:CHROMO_FLAG:N/A

N:Anti-Xeno Alien Bunker
T:1:3:1
E@5:1
G:ALIEN
F:ALIEN | ANTI_XENO
P:3:CONSUME_ALIEN | XENO_DEFENSE:3:1
P:5:PRODUCE:0:0

N:Alien Archives
T:1:5:4
E@5:1
G:ALIEN
P:3:REDUCE | ALIEN:2:0
P:5:DISCARD | PRODUCE:0:0

N:Alien Weapon Cache
T:1:3:1
E@5:1
G:ALIEN
F:WINDFALL | ALIEN | MILITARY
P:3:CONSUME_ALIEN | EXTRA_MILITARY | XENO:3:0

N:Xeno-Infested Alien Outpost
T:1:7:5
E@5:1
G:ALIEN
F:WINDFALL | ALIEN | MILITARY | XENO
P:3:EXTRA_MILITARY:2:0

N:Alien Defense Center
T:1:8:8
E@5:1
G:ALIEN
F:WINDFALL | ALIEN | MILITARY
P:3:EXTRA_MILITARY | XENO:3:0

N:Xeno Warrior Colony
T:1:6:5
E@5:1
F:MILITARY | XENO
P:3:EXTRA_MILITARY | XENO:1:0

N:Xeno-Occupied Rebel World
T:1:8:7
E@5:1
F:MILITARY | REBEL | XENO
P:3:XENO_DEFENSE:2:0

N:Xeno Forward Command
T:1:9:9
E@5:1
F:MILITARY | XENO

N:Anti-Xeno Militia
T:2:1:0
E@5:2
F:ANTI_XENO
P:3:EXTRA_MILITARY:1:0
P:3:EXTRA_MILITARY | XENO:1:0
P:3:DISCARD_HAND | XENO_DEFENSE:3:1

N:Alien Weapon Plans
T:2:1:1
E@5:2
F:ALIEN
P:1:DRAW:1:0
P:3:EXTRA_MILITARY | ALIEN:2:0
P:3:EXTRA_MILITARY | XENO:1:0

N:Uplift Terraforming
T:2:2:1
E@5:2
F:TERRAFORMING | UPLIFT
P:1:DRAW:1:0
P:3:REDUCE:1:0
P:3:PAY_MILITARY | AGAINST_CHROMO:0:0
P:5:DISCARD | WINDFALL_GENE:0:0

N:Anti-Xeno Assault Troops
T:2:3:2
E@5:2
F:ANTI_XENO
P:3:EXTRA_MILITARY:2:0
P:3:EXTRA_MILITARY | XENO:1:0

N:Imperium Arms Factory
T:2:4:2
E@5:2
F:IMPERIUM
P:3:CONSUME_RARE | EXTRA_MILITARY:2:0
P:4:CONSUME_RARE | GET_VP | GET_CARD:1:2
P:5:WINDFALL_RARE:0:0

N:Construction Corps
T:2:4:2
E@5:2
P:2:REDUCE:2:0
P:5:REPAIR:1:0

N:Galactic Home Front
T:2:5:3
E@5:2
P:3:CONSUME_NOVELTY | XENO_DEFENSE:2:1
P:4:VP:1:0
P:4:DISCARD_HAND | GET_VP:1:1
P:5:DRAW_EVERY_TWO:1:0

N:Uplift Bio-Engineers
T:2:6:0
E@5:1
F:UPLIFT
P:4:CONSUME_GENE | GET_VP | GET_CARD:2:1
P:5:WINDFALL_GENE:0:0
V:2:UPLIFT_FLAG:N/A
V:1:GENE_PRODUCTION:N/A
V:1:GENE_WINDFALL:N/A

N:Imperium War Profiteers
T:2:6:0
E@5:1
F:IMPERIUM
P:3:REDUCE | RARE:2:0
P:5:DRAW_WORLD_RARE:1:0
V:3:NAME:Blaster Gem Mines
V:3:NAME:Imperium Armaments World
V:2:IMPERIUM_FLAG:N/A
V:1:RARE_PRODUCTION:N/A
V:1:RARE_WINDFALL:N/A

N:Terraforming Defenders
T:2:6:0
E@5:1
F:TERRAFORMING
P:3:CONSUME_ANY | XENO_DEFENSE:2:1
P:4:CONSUME_ANY | GET_VP:2:1
P:5:REPAIR:1:0
V:2:TERRAFORMING_FLAG:N/A
V:3:NAME:Terraformed World
V:1:NOVELTY_PRODUCTION:N/A
V:1:RARE_PRODUCTION:N/A
V:1:GENE_PRODUCTION:N/A
V:1:ALIEN_PRODUCTION:N/A

N:Anti-Xeno Rebel Force
T:2:6:0
E@5:1
F:REBEL | ANTI_XENO
P:3:EXTRA_MILITARY | PER_REBEL_MILITARY:1:0
V:2:REBEL_MILITARY:N/A
V:1:ANTI_XENO_FLAG:N/A
V:1:XENO_MILITARY:N/A

N:Alien Historians
T:2:6:0
E@5:1
F:ALIEN
P:1:DRAW:1:0
P:3:EXTRA_MILITARY | ALIEN:2:0
P:3:EXTRA_MILITARY | XENO:2:0
P:5:DRAW_XENO_MILITARY:1:0
V:2:XENO_MILITARY:N/A
V:3:NAME:Alien Archives
V:1:ALIEN_FLAG:N/A

N:Anti-Xeno League
T:2:6:0
E@5:1
F:ANTI_XENO
P:3:EXTRA_MILITARY | XENO | PER_PEACEFUL:1:0
P:5:DRAW_TWO_MILITARY:1:0
V:2:ANTI_XENO_WORLD:N/A
V:1:WORLD:N/A
V:1:ANTI_XENO_DEVEL:N/A
]]