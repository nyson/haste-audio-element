{-# LANGUAGE GADTs #-}

{-
JavaScript HTML5 bindings for the <audio> element
-}

module HTML5Audio where

import Haste
import Data.Maybe

data MediaEvent m a where
  Abort          :: MediaEvent m (m ())
  CanPlay        :: MediaEvent m (m ())
  CanPlayThrough :: MediaEvent m (m ())
  DurationChange :: MediaEvent m (m ())
  Emptied        :: MediaEvent m (m ())
  Ended          :: MediaEvent m (m ())
  MediaError     :: MediaEvent m (m ())
  LoadedData     :: MediaEvent m (m ())
  LoadedMetaData :: MediaEvent m (m ())
  LoadStart      :: MediaEvent m (m ())
  Pause          :: MediaEvent m (m ())
  Play           :: MediaEvent m (m ())
  Playing        :: MediaEvent m (m ())
  Progress       :: MediaEvent m (m ())
  RateChange     :: MediaEvent m (m ())
  Seeked         :: MediaEvent m (m ())
  Seeking        :: MediaEvent m (m ())
  Stalled        :: MediaEvent m (m ())
  Suspend        :: MediaEvent m (m ())
  TimeUpdate     :: MediaEvent m (m ())
  VolumeChange   :: MediaEvent m (m ())
  Waiting        :: MediaEvent m (m ())

type AudioElem = Elem
data CanPlay = No | Indeterminable | Probably

-- Media Object Methods ------------------------------------------------------
{-
Checks if a mime type string should be able to play; Nothing means that it
can't be decided until the file loads
-}
canPlayType :: String -> CanPlay
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



