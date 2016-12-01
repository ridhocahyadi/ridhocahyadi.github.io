{-# LANGUAGE OverloadedStrings #-}
module Blaze where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A

defaultPage :: Html
defaultPage = H.docTypeHtml $ do
       H.head $ do
         H.title "Go green"
         H.link ! A.rel "stylesheet" ! A.href "./css/default/.css"
