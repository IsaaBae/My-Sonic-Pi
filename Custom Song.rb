# Welcome to Sonic Pi
live_loop:Pop_Smoke do
  use_synth :fm
  use_bpm 220
  
  with_fx :krush do
    
    define :one do
      #measure1
      play :b2, amp: 2
      sleep 0.5
      play :f3
      sleep 0.5
      play :b2
      sleep 0.5
      play :cs4
      sleep 1
      play :b3, amp: 3
      sleep 1.5
      #measure2
      play :e2
      sleep 0.5
      play :b2
      sleep 0.5
      play :e3
      sleep 0.5
      play :g3
      sleep 1
      play :e3, amp: 3
      sleep 1.5
      
      use_bpm 200
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
      play :fs4
      sleep 0.5
      play :d4
      sleep 0.5
      play :e4
      sleep 0.5
      play :b3
      sleep 0.5
    end
  end
  
  
  live_loop:First do
    2. times do
      one
    end
    stop
  end
  
 
end






