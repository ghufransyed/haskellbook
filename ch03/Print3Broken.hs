module Print3Broken where

printSecond :: IO ()
printSecond = do
    putStrLn greeting
    
greeting :: String
greeting = "Yowser!"
    
main :: IO ()
main = do
    putStrLn greeting
    printSecond

