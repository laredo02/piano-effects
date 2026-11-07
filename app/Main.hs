
module Main where

import Sound.PortMidi (initialize, countDevices, terminate)

main :: IO ()
main = do
  _ <- initialize
  n <- countDevices
  putStrLn ("MIDI Devices: " ++ show n)
  _ <- terminate
  return ()
  

