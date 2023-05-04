--Add all of the elements in an array and print total
list1 :: [Int]
list1 = [1,2,3,4,5,6,7,8,9,10]
list2 :: [Int]
list2 = [11, 12, 13, 14, 15, 16, 17, 18, 19 , 20]
computeTotalOfListElements :: Int -> [Int] -> IO()
computeTotalOfListElements total givenList = do
 if length givenList > 0
 then do
 let element1 = head givenList
 computeTotalOfListElements (total + element1) (tail givenList)
 else print(total)
main = do
 computeTotalOfListElements 0 list1
 computeTotalOfListElements 0 list2