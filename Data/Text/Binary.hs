{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}

module Data.Text.Binary where

#if !(MIN_VERSION_text(1,2,1))
import Control.Applicative ((<$>))
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as L
import qualified Data.Text.Lazy.Encoding as L
import Data.Binary

instance Binary T.Text where
    put = put . T.encodeUtf8
    get = T.decodeUtf8 <$> get

instance Binary L.Text where
    put = put . L.encodeUtf8
    get = L.decodeUtf8 <$> get
#endif
