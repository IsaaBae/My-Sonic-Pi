#Custom Song 2
use_synth :prophet
#Files
voice = "C:/Users/John_Sivley/Desktop/Custom Song 2/Clip 2 TD.0.wav"
BTS = "C:/Users/John_Sivley/Desktop/Custom Song 2/Clip 1 BTS.wav"
#Array
x = 0
bomb = [:b2,:f3,:b2,:cs4,:b3,:e2,:b2,:e3,:g3,:e3]
rest = [0.5,0.5,0.5,1,1.5,0.5,0.5,0.5,1,1.5]

#Definitions + Function + Paramaters
define :boom do
  sample :drum_heavy_kick
  sleep 0.2
  sample :bd_zum
  sleep 0.2
end

define :lows_dn_ss do |n1,n2,n3|
  play n1
  sleep 1
  play n2
  sleep 1
  play n3
  sleep 1
end

define :highs_dn_ss do |n1,n2,n3,n4,n5,n6|
  play  n1
  sleep 1
  play  n2
  sleep 1
  play  n3
  sleep 0.5
  play  n4
  sleep 0.5
  play  n5
  sleep 0.5
  play  n6
  sleep 0.5
end

#Intro
sample voice
8.times do
  boom
end

sleep 6

#Micdrop Notes
#Low Notes
live_loop:Low_notes do
  use_bpm 150
  2.times do
    lows_dn_ss :ds3,:as3,:ds4
    lows_dn_ss :ds2,:as2,:ds3
  end
end

sleep 5

#Sample
sample BTS
sleep 2

#High Notes
live_loop:High_notes do
  use_bpm 150
  4.times do
    highs_dn_ss :ds4,:ds4,:ds5,:e5,:b4,:as4
  end
end

sleep 7.6

#High Notes Remixed
live_loop:High_Mix do
  use_bpm 150
  4.times do
    play bomb [x]
    sleep rest [x]
    x = x + 1
  end
  x = 0
  highs_dn_ss :ds5,:ds5,:ds6,:e6,:b5,:as5
end

sleep 9
