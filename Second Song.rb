#Custom Song 2
use_synth :prophet
#Files

BTS = "C:/Users/John_Sivley/Desktop/Custom Song 2/Clip 1 BTS.wav"
#Array
x = 0
bomb = [:b3,:d4,:f4,:d4,:f4,:d4,:f4,:d4,:f4,:g4,:f4,:e4,:d4]
rest = [1,1,1,0.5,1,0.5,1,0.5,0.5,0.5,0.5,0.5,0.5,]
van = ["c3","e3","g3","b3","c4","b3","g3","e3",]

#Definitions + Function + Paramaters

define :lows_dn_ss do |n1,n2,n3,|
  sample :drum_heavy_kick
  sleep 1
  sample :drum_heavy_kick
  sleep 1
  sample :drum_heavy_kick
end

define :highs_dn_ss do |n1,n2,n3,n4,n5,n6|
  play n1,amp:3
  sleep 1
  play n2,amp:3
  sleep 0.5
  play n3,amp:3
  sleep 0.5
  play n4,amp:3
  sleep 0.5
  play n5,amp:3
  sleep 0.5
  play n6,amp:3
  sleep 1
end

#Intro
live_loop :first_song do
  live_loop :main_theme do
    3.times do
      use_synth :growl
      use_bpm 190
      play (van[x])
      sleep 0.7
      x = x + 1
      if x>8
        x = 0
      end
    end
  end
  
  sleep 6
  
  #Micdrop Notes + Low Notes
  live_loop:Low_notes do
    use_synth :beep
    use_bpm 140
    3.times do
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
    use_bpm 140
    use_synth :hoover
    6.times do
      highs_dn_ss :ds4,:ds4,:ds5,:e5,:b4,:as4
      use_synth :prophet
    end
  end
end

sleep 45

live_loop :second_song do
  #Transition
  sample :ambi_glass_hum
  sleep 0.3
  sample :ambi_drone
  sample :ambi_haunted_hum
  
  #Second Song + Polo G Song
  live_loop:Melody do
    use_bpm 150
    use_synth :beep
    6.times do
      13.times do
        play bomb [x]
        sleep rest [x]
        x = x + 1
      end
      x = 0
    end
  end
end


