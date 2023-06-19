{-# LANGUAGE OverloadedStrings #-}

module Lib
  ( someFunc,
  )
where

import Control.Applicative ((<$>), (<*>))
import Control.Monad (mzero)
import Data.Aeson
import Data.ByteString (ByteString)
import Data.ByteString qualified as B

readSpecificJSON :: forall a. (FromJSON a) => ByteString -> Maybe a
readSpecificJSON = decodeStrict

someFunc :: IO ()
someFunc = putStrLn "someFunc"
