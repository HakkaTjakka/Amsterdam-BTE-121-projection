#setblock ~ ~ ~ water 0 replace

setblock ~ ~ ~ gold_block 0 replace
fill ~ ~1 ~ ~ ~1 ~ repeating_command_block 0 keep {Command:"/function exxabite:water_up",auto:1b}

#fill ~ ~-1 ~ ~ ~-1 ~ air 0 replace dirt
#fill ~ ~-1 ~ ~ ~-1 ~ air 0 replace gold_ore
#fill ~ ~-1 ~ ~ ~-1 ~ repeating_command_block 0 keep {Command:"/function exxabite:water2",auto:1b}


#fill ~-1 ~ ~-1 ~1 ~ ~1 water 0 replace dirt 0
##fill ~-1 ~-1 ~-1 ~1 ~ ~1 water 0 replace gold_ore 0
#fill ~-1 ~ ~-1 ~1 ~ ~1 air 0 replace glowstone 0

#fill ~-1 ~ ~-1 ~1 ~ ~1 air 0 replace glowstone 0
#fill ~-1 ~ ~-1 ~1 ~ ~1 air 0 replace gold_ore 0
#fill ~-1 ~ ~-1 ~1 ~ ~1 repeating_command_block 0 keep {Command:"/function exxabite:water2",auto:1b}
#
#fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 glowstone 0 replace stone

#fill ~-5 ~1 ~-5 ~ ~1 ~ repeating_command_block 0 keep {Command:"/function exxabite:water",auto:1b}
#fill ~ ~1 ~6 ~ ~1 ~6 repeating_command_block 0 keep {Command:"/function exxabite:water",auto:1b}
#fill ~ ~1 ~-6 ~ ~1 ~-6 repeating_command_block 0 keep {Command:"/function exxabite:water",auto:1b}
#fill ~ ~1 ~7 ~ ~1 ~7 repeating_command_block 0 keep {Command:"/function exxabite:water",auto:1b}
