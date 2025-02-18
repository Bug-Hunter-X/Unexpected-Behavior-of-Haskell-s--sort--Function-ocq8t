```haskell
import Data.List (sort, sortBy)
import Data.Ord (comparing)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- Output: [1,2,3,4,5]
  let zs = [5,4,3,2,1]
  let ws = sort zs
  print ws -- Output: [1,2,3,4,5]
  let as = [1,3,5,2,4]
  let bs = sort as
  print bs --Output: [1,2,3,4,5]

  let complexList = ["apple","banana","cherry","date","fig","grapefruit"]
  let sortedList = sort complexList
  print sortedList --Output: ["apple","banana","cherry","date","fig","grapefruit"]

  let complexList2 = ["grapefruit","fig","date","cherry","banana","apple"]
  let sortedList2 = sort complexList2
  print sortedList2 -- Output: ["apple","banana","cherry","date","fig","grapefruit"]

  let anotherComplexList = ["apple","banana","cherry","date","fig","grapefruit","apple"]
  let anotherSortedList = sort anotherComplexList
  print anotherSortedList -- Output: ["apple","apple","banana","cherry","date","fig","grapefruit"]

  --To handle duplicates differently or to sort complex types, use sortBy
  let anotherSortedList2 = sortBy (comparing length) anotherComplexList
  print anotherSortedList2 --Output: ["apple","apple","fig","date","banana","cherry","grapefruit"]

```