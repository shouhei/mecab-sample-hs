module Lib
    ( someFunc
    ) where

import Text.MeCab

someFunc :: IO ()
someFunc = do
  let text = "隣の客はよく柿食う客だ"
  mecab  <- new2 ""
  result <- parse mecab text
  putStrLn $ result
