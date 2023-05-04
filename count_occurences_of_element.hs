--Count the occurences of the given element in a given list
list1 :: [Int]
list1 = [23, 45, 56, 67, 78 ,89, 45, 45, 45, 23, 45, 45, 45, 22, 1515, 663]
countElementInArray :: Int -> Int -> Int -> [Int] -> IO ()
countElementInArray element counter iter1 list1 = do
 if iter1 < length list1
 then do
 let element1 = list1 !! iter1
 if element1 == element
 then do
 countElementInArray (element) (counter+1) (iter1+1) (list1)
 else countElementInArray (element) (counter) (iter1+1) (list1)
 else print(counter)
main = do
 countElementInArray 45 0 0 list1