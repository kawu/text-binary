module Data.Text.Binary where

import Control.Applicative ((<$>))
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import Data.Binary

instance Binary T.Text where
    put = put . T.encodeUtf8
    get = T.decodeUtf8 <$> get
