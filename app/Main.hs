{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Prelude as P

--import              Control.Monad
import              Control.Applicative hiding (many)

import              Data.Text (Text)
import              Data.Void

import              Text.Megaparsec (Parsec)

import Text.Megaparsec
import Text.Megaparsec.Char

-- main = forever $ do
--     putStr "> "
--     a <- getLine
--     putStr $ a ++ "\n\n"

main :: P.IO ()
main = do P.putStrLn "SIUUU"

-- https://markkarpov.com/tutorial/megaparsec.html

type Parser = Parsec Void Text


mySequence :: Parser (P.Char, P.Char, P.Char)
mySequence = do
    (,,)    <$> char 'a'
            <*> char 'b'
            <*> char 'c'


