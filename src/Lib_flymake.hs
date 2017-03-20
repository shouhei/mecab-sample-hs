module Lib
    ( someFunc
    ) where

import Text.MeCab

someFunc :: IO ()
someFunc = do
  let input = "太郎は次郎が持っている本を花子に渡した。"
  mecab  <- new2 ""
  result <- parse mecab input
  putStrLn $ "RESULT: " ++ result
