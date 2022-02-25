# TEMPO & SYNTH
use_bpm 190

use_synth :dpulse
ooh = "C:/Users/John_Sivley/Downloads/Beats/travis_sounds/ohh.wav"
skrt = "C:/Users/John_Sivley/Downloads/Beats/travis_sounds/skrt.wav"
lit = "C:/Users/John_Sivley/Downloads/Beats/travis_sounds/dope.wav"

#INTRO
sample lit
sleep 2

play :e3
sleep 0.5
play :e4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :e4
sleep 1
play :g4
sleep 2
play :g2
sleep 2

# PART ONE
live_loop:Part_two do
  4.times do
    play :c4
    sleep 1.5
    play :g3
    sleep 1.5
    play :e3
    sleep 1.5
    sample ooh, amp: 3
    play :a3
    sleep 1
    play :b3
    sleep 1
    play :bb3
    sleep 0.5
    play :a3
    sleep 1
  end
  stop
end

#sample
live_loop :Sample do
  4.times do
    sleep 5.5
    sample ooh, amp: 3
    sleep 2.5
  end
  stop
end

sleep 32

#PART TWO
play :g3
sleep 2/3.0 #0.666666...
play :e4
sleep 2/3.0 #0.666666...
play :g4
sleep 2/3.0 #0.666666...
play :a4
sleep 1
play :f4
sleep 0.5
play :g4
sleep 1
play :e4
sleep 1
play :c5
sleep 0.5
sample skrt
sleep 0.5
play :b4
sample skrt
sleep 0.5
sample ooh
sleep 1
