Gem::Specification.new do |s|
  s.name          = 'game_dice'
  s.version       = '1.0.0'
  s.date          = '2012-10-30'
  s.summary       = 'A simple library and scripts for rolling common RPG dice.' 
  s.authors       = ['Brandon Rice']
  s.email         = 'brice84@gmail.com'
  s.homepage      = 'https://github.com/nevern02/game_dice'
  s.files         = ['lib/game_dice.rb',
                     'lib/game_dice/die.rb',
                     'lib/game_dice/dice.rb',
                     'bin/roll']
  s.require_paths = ['lib']
  s.executables   << 'roll'
  s.bindir        = 'bin'
  s.description   = "This is a simple library for dealing with RPG dice systems. 
                     It comes packaged with some scripts for rolling dice and 
                     dealing with other common RPG scenarios. See the scripts 
                     in the bin/ dir for details."
end
