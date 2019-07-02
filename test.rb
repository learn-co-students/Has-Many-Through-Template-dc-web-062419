require_relative "lib/mountain.rb"
require_relative "lib/run.rb"
require_relative "lib/snowboarder.rb"
require_relative "lib/shred.rb"

# Mountains
blackcomb = Mountain.new("Blackcomb", "Whistler")
saulire = Mountain.new("Saulire", "Courchevel")
snowmass = Mountain.new("Snowmass", "Aspen")

# Snowboarders
luke = Snowboarder.new("Luke","amazing")
leslie = Snowboarder.new("Leslie","amazing")
bob = Snowboarder.new("Bob","noob")
sally = Snowboarder.new("Sally","noob")

# Runs
diamond_death = Run.new("Diamond Death",blackcomb,"amazing")
yeti_crusher = Run.new("Yeti Crusher",saulire,"amazing")
tech_moguls = Run.new("Tech Moguls",saulire,"amazing")
icy_hell = Run.new("Icy Hell",snowmass,"amazing")
bunny_hopper = Run.new("Bunny Hopper",blackcomb,"noob")
cruiser_backside = Run.new("Cuiser Backside",snowmass,"noob")
winter_funtimes = Run.new("Winter Funtimes",snowmass,"noob")

# Shreds
Shred.new(diamond_death,luke)
Shred.new(diamond_death,leslie)
Shred.new(yeti_crusher,luke)
Shred.new(yeti_crusher,leslie)
Shred.new(tech_moguls,luke)
Shred.new(icy_hell,leslie)
Shred.new(bunny_hopper,bob)
Shred.new(cruiser_backside,bob)
Shred.new(bunny_hopper,sally)
Shred.new(cruiser_backside,sally)
Shred.new(winter_funtimes,sally)

# Mountain
p "MOUNTAIN"
p "Mountain.all returns an array with all mountains"
p Mountain.all == [blackcomb,saulire,snowmass]
p "runs returns an array with that mountain's runs"
p blackcomb.runs == [diamond_death,bunny_hopper]
p "snowboarders returns an array with that mountain's snowboarders"
p saulire.snowboarders == [luke, leslie]
p "percent_difficulty returns % of mountain's runs that are amazing"
p saulire.percent_difficulty == 100
p snowmass.percent_difficulty == (1.to_f/3 * 100).round(2)

# Snowboarder
puts "\n"
p 'SNOWBOARDER'
p "mountains returns an array with all mountains a snowboarder has skied"
p luke.mountains == [blackcomb,saulire]
p "Snowboarder.all returns an array with all snowboarders"
p Snowboarder.all == [luke, leslie, bob, sally]
p "add_shred creates a new instance of the Shred class for this snowboarder"
luke.add_shred(icy_hell)
p Shred.all.find{ |shred| shred.run == icy_hell && shred.snowboarder == luke }.class == Shred
p "runs returns an array with all runs a snowboarder has skied"
p leslie.runs == [diamond_death,yeti_crusher,icy_hell]

# Run
puts "\n"
p "RUN"
p "Run.all returns an array with all runs"
p Run.all == [diamond_death,yeti_crusher,tech_moguls,icy_hell,bunny_hopper,cruiser_backside,winter_funtimes]
p "snowboarders returns an array with all snowboarders for that run"
p yeti_crusher.snowboarders == [luke,leslie]

# Shred
puts "\n"
p "SHRED"
p "Shred.all returns an array with all shreds"
p Shred.all.class == Array
p Shred.all.size == 12