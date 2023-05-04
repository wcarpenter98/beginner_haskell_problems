--Compute the squares down to 1 from a given element
computeSquaresDown :: Int -> IO()
computeSquaresDown givenElement = do
 if givenElement > 0
 then do
 print(givenElement * givenElement)
 computeSquaresDown (givenElement-1)
 else pure()
main = do
 computeSquaresDown 10