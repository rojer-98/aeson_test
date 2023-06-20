{-# LANGUAGE ImportQualifiedPost #-}
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

readSpecificJSON :: (FromJSON a) => ByteString -> Maybe a
readSpecificJSON = decodeStrict

readFile :: FilePath -> Maybe ByteString
readFile fn = mbs
  where
    rfm = get $ B.readFile fn

someFunc :: IO ()
someFunc = putStrLn "someFunc"
