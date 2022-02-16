use_bpm 160
use_synth :saw
define :stranger_things_melody do
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  play :c3
  sleep 0.5
  play :b2
  sleep 0.5
  play :g2
  sleep 0.5
  play :e2
  sleep 0.5
end

with_fx :rhpf do
  stranger_things_melody
end

with_fx :rlpf do
  stranger_things_melody
end

with_fx :whammy do
 stranger_things_melody
end

with_fx :ixi_techno do
  stranger_things_melody
end

play :c2, sustain: 3
play :e2, sustain: 4
play :g2, sustain: 2
play :b2, sustain: 2
