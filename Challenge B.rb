#Challenge B
live_loop :my_snare  do
  12.times do
    sample :drum_snare_soft
    sleep 2
  end
  stop
end

live_loop :my_kick  do
  
  16.times do
    sample :drum_heavy_kick, amp: 2
    sleep 1
  end
  stop
end

live_loop :my_cymbal  do
  
  16.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  stop
end

sleep 18

live_loop :my_splash  do
  1.times do
    sample :drum_splash_hard
    sleep 0
  end
  stop
end


live_loop :my_cymbal  do
  8.times do
    sample :drum_cymbal_hard, amp: 3
  end
  stop
end

