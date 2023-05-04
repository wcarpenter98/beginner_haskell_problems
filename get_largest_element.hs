--Return the largest element in the given list
list1 :: [Int]
list1 = [22,3232,1,42,4242,111,1,5]
getLargestPositiveElement :: Int -> [Int] -> IO()
getLargestPositiveElement curLargest givenList = do
 if length givenList > 0
 then do
 let element1 = head givenList
 if element1 >= curLargest
 then do
 getLargestPositiveElement element1 (tail givenList)
 else getLargestPositiveElement curLargest (tail givenList)
 else print(curLargest)
main = do
 getLargestPositiveElement 0 list1