# Seven Nation Army by The White Stripes w/ arrays
use_synth :fm
use_synth_defaults sustain: 0.25
index = 0
x=0
n = [1.5,0.5,0.75,0.25,0.5,0.5,2,2,]
beat = [ "e3","e3","g3","e3",0,"d3","c3","b2", ]
live_loop :white_stripes do
  use_bpm 120
  # YOUR TASK: Use arrays to shorten the 16 lines of code inside the live_loop to 6 lines of code!
  play beat [x]
  sleep n[x]
  x=x+1
  if x> 7
    x=0
  end
end
