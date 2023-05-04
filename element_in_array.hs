--Is the given element in the array
elements :: [Int]
elements = [23, 55, 22, 11, 51, 55, 66, 22, 55, 22, 15]
isElementInList :: Int -> Int -> IO()
isElementInList iter element = do
 if iter <= length elements -1
 then do
 let cur = elements !! iter
 if cur == element
 then do
 print("Element ", cur , " is in the array!")
 else isElementInList (iter+1) element
 else print("Element ", element , " is not in the array!")
main = do
 isElementInList 0 11
 isElementInList 0 99