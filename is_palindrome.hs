--Is palindrome
main = do
 let word = "racecar"
 let reversedWord = reverse word
 print("Is ",word, " a palindrome? ")
 print(word == reversedWord)
 let word2 = "bubble"
 let reversedWord2 = reverse word2
 print("Is ",word2, " a palindrome? ")
 print(word2 == reversedWord2)
