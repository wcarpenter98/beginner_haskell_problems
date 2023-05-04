--fizzbuzz
fizzBuzz :: Int -> IO ()
fizzBuzz num = do
 if num <= 20
 then do
 putStr "Current Number is :"
 print(num)
 if num `mod` 3 == 0
 then do putStr "Fizz"
 else pure()
 if num `mod` 5 == 0
 then do putStr "Buzz"
 else pure()
 putStrLn ""
 fizzBuzz (num + 1)
 else putStrLn "completed"
main = do
 fizzBuzz 1