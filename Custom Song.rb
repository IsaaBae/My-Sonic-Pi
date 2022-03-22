# Isaa Custom Song
Guitar="C:/Users/John_Sivley/Desktop/Guiataer Sampkle.wav"
bumper = "C:/Users/John_Sivley/Desktop/Bumper Sample.wav"
index = 0
x = 0
beat = [:b2,:f3,:b2,:cs4,:b3,:e2,:b2,:e3,:g3,:e3]
r = [0.5,0.5,0.5,1,1.5,0.5,0.5,0.5,1,1.5]

use_bpm 220
use_synth :blade
define :one do
  with_fx :bpf do
    #measure1 and 2
    sample :vinyl_hiss
    10.times do
      play beat[x]
      sleep r[x]
      x = x + 1
    end
    x = 0
    play :e3
    sleep 0.5
    play :b3
    sleep 0.5
    play :d4
    sleep 0.5
    play :fs4
    sleep 0.25
    play :g4
    sleep 0.25
    play :fs4,amp: 3
    sleep 0.5
    play :d4,amp: 2
    sleep 0.5
    play :e4,amp: 1
    sleep 0.5
    play :b3,amp: 0.9
    sleep 0.5
  end
end

live_loop:First do
  4.times do
    one
  end
  stop
end

sleep 34

live_loop:Pop_Smoke do
  1.times do
    use_bpm 110
    sample Guitar
    sleep 2.4
    sample bumper
  end
  stop
end













