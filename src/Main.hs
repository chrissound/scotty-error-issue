{-# LANGUAGE OverloadedStrings #-}  
module Main where

import Web.Scotty
import Control.Monad.IO.Class
import System.IO

main :: IO ()
main = do
  hSetBuffering stdin NoBuffering
  hSetBuffering stdout NoBuffering
  scotty 3000 $ do
    get "/normal" $ liftIO $ do
      print "normal"
    get "/test" $ liftIO $ do
      print "pre error"
      error "THE ERROR"
      print "post error"
