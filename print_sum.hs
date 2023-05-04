--Print the sum from iterating 1 to the total
totalNToTarget :: Int -> Int -> IO ()
totalNToTarget num total = do
 if num > 0
 then do
 let newTotal = num + total
 totalNToTarget (num-1) (newTotal)
 else print(total)
main = do
 totalNToTarget 340 0