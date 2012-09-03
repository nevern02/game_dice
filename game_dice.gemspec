Gem::Specification.new do |s|
  s.name          = 'game_dice'
  s.version       = '0.0.1'
  s.date          = '2012-09-03'
  s.summary       = 'A simple library and scripts for rolling common RPG dice.' 
  s.authors       = ['Brandon Rice']
  s.email         = 'brice84@gmail.com'
  s.files         = ['lib/game_dice.rb', 'lib/game_dice/die.rb', 'bin/roll']
  s.require_paths = ['lib']
  s.executables   << 'roll'
end
