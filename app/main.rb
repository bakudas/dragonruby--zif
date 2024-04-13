# Require all of the Zif library:
require 'lib/zif/require.rb'

def tick args

  dragon = Zif::Sprite.new.tap do |s|
    s.x = 100
    s.y = 100
    s.w = 100
    s.h = 100
    s.path = 'sprites/misc/dragon-1.png'
  end


  # Initialize the game if it hasn't been yet
  if args.state.tick_count == 0
    # Initialize the game
    args.state.game = Game.new
  end

  # Update the game
  args.state.game&.perform_tick(args)

  # Draw the game
  args.state.game&.perform_draw(args)

  args.outputs.sprites << dragon
end
