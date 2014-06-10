{-
JavaScript HTML5 bindings for the <audio> element
-}

module HTML5Audio where

import Haste
import Data.Maybe

type AudioElem = Elem

-- Media Object Methods ------------------------------------------------------
{-
Checks if a mime type string should be able to play
-}
canProbablyPlayType :: String -> Bool
canProbablyPlayType = case canPlayType t of
  Just True -> True
  _         -> False

{-
Checks a mime type string should be able to play. This check
will also consider maybe playable formats; formats which are impossible to
tell before playing it (certain forms of containers etc).
-}
canMaybePlayType :: String -> Bool
canMaybePlayType = case canPlayType t of
  Nothing -> True
  Just x  -> x

{-
Checks if a mime type string shouldn't be able to play
-}
canNotPlayType :: String -> Bool
canNotPlayType t = case canPlayType t of
  Just False -> True
  _          -> False
  
{-
Checks if a mime type string should be able to play; Nothing means that it
can't be decided until the file loads
-}
canPlayType :: String -> Maybe Bool
canPlayType = undefined

{-
Fast seek to the given time
-}
fastSeek :: AudioElem -> Double -> IO ()
fastSeek = undefined

{-
Begins loading media content on the server
-}
load :: AudioElem -> IO ()
load = undefined

{-
Pauses playing media, or unpauses paused media
-}
pause :: AudioElem -> IO ()
pause = undefined


