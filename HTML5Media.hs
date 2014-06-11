{-# LANGUAGE GADTs #-}

{-
JavaScript HTML5 bindings for the <audio> and <video> element
-}

module HTML5Media where

import Haste

{-
 May be simplified; do we need attributes to the media events? Or do we want
arguments?
-}
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

data MediaElem = Audio Elem | Video Elem
data CanPlay = No | Indeterminable | Probably
             deriving (Eq, Ord)
                      
mediaElem :: Elem -> IO (Maybe MediaElem)
mediaElem = undefined
-- Media Object Methods ------------------------------------------------------
{-
Checks if a mime type string should be able to play; Nothing means that it
can't be decided until the file loads
-}
canPlayType :: MediaElem -> String -> CanPlay
canPlayType = undefined

{-
Fast seek to the given time
-}
fastSeek :: MediaElem -> Double -> IO ()
fastSeek = undefined

{-
Begins loading media content on the server
-}
load :: MediaElem -> IO ()
load = undefined

{-
Pauses playing media, or unpauses paused media
-}
pause :: MediaElem -> IO ()
pause = undefined



