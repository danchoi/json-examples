#!/usr/bin/env stack
-- stack --resolver lts-10.7 script --package aeson,bytestring
{-# LANGUAGE OverloadedStrings #-}
import Data.Aeson
import qualified Data.ByteString.Lazy.Char8 as BL


main = do

    bs <- BL.getContents
    let r :: Either String Value
        r = eitherDecode bs
    BL.putStrLn . encode $ r

