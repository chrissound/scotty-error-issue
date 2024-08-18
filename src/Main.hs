{-# LANGUAGE OverloadedStrings #-}  
module Main where

import Web.Scotty
import Control.Monad.IO.Class

main :: IO ()
main = do
  scotty 3000 $ do
    get "/test" $ do
      error "test"
