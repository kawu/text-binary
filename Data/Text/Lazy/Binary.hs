module Data.Text.Lazy.Binary where

import Control.Applicative ((<$>))
import qualified Data.Text.Lazy as L
import qualified Data.Text.Lazy.Encoding as L
import Data.Binary

instance Binary L.Text where
    put = put . L.encodeUtf8
    get = L.decodeUtf8 <$> get
