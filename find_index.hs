--Find first index of target element in provided list
elements :: [Int]
elements = [111, 54, 23, 622, 1, 53, 11, 3, 5, 90]
targetElement :: Int
targetElement = 5
findTargetElement :: Int -> Int -> IO ()
findTargetElement iter targetElement = do
 if iter <= length elements -1
 then do
 let currentElement = elements !! iter
 if currentElement == targetElement
 then do
 print("The index of the target element is: ", iter)
 else findTargetElement (iter +1) (targetElement)
 else print("finished")
main = do
 print("Find the index of the target element in the list: ", elements)
 print("The target element is: ", targetElement)
 findTargetElement 0 targetElement