{-# LANGUAGE OverloadedStrings #-}
module ClayH where
import Clay

indexPage :: Css
indexPage = body ?
    do background black
       color      green
       border     dashed (px 2) yellow

main :: IO ()
main = putCss indexPage
