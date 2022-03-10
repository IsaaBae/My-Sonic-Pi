# Stranger Things Main Theme with arrays
use_bpm 160
use_synth :saw
index = 0
x=0
beat = ["c2","e2","g2","b2","c3","b2","g2","e2",]

live_loop :main_theme do
  with_fx :ixi_techno do
    play (beat[x])
    sleep 0.5
    x=x+1
    if x > 7
      x=0
    end
  end
end
