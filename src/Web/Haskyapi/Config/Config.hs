{-# LANGUAGE MultiWayIf, BangPatterns#-}
{-# LANGUAGE OverloadedStrings, LambdaCase #-}
module Web.Haskyapi.Config.Config (
  domain,
  subdomain,
  db,
  ip,
) where

import qualified Data.Text as T
import Data.Maybe
import Control.Arrow ((&&&))
import Control.Exception

import Web.Haskyapi.Header (Domain, SubDomain)
import Web.Haskyapi.Config.Parser

parsedFile =
  sparser "setting.yml" <$> readFile "setting.yml"
  `catch` \(SomeException e) -> return []

slookup k [] = Nothing
slookup k (x:xs)
  | k == key x = Just x
  | otherwise  = slookup k xs

aux def k fun =
  parsedFile >>= \case
    Left  x -> return def
    Right x -> return . maybe def fun $ slookup k x

subdomain :: IO SubDomain
subdomain = map (key &&& aval) <$> aux [] "subdomain" bval

domain :: IO Domain
domain = aux "localhost" "domain" aval

ip = aux "0.0.0.0" "ip" aval

db = T.pack <$> aux "app.db" "db" aval

main = do
  print =<< domain
  print =<< ip
  print =<< db
  print =<< subdomain