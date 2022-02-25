4.times do
  use_synth :hollow
  play 50
  sleep 0.25
  play 54, release: 1
  sleep 0.25
  play 50, attack: 1
  sample :ambi_glass_hum
  use_synth :hollow
  play 50
  sleep 0.25
  play 54, release: 1
  sleep 0.25
  play 50, attack: 1
end
