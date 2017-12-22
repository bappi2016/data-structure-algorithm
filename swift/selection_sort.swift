// Selection Sort 
// O(n^2)
// Take integer Array and sort 


func findSmallest(arr: [Int]) -> Int {
    var smallestItem  = arr[0]
    var smallestIndex = 0
    for i in 1..<arr.count{
        if arr[i] < smallestItem {
            smallestItem  = arr[i]
            smallestIndex = i
        }
    }
    return smallestIndex
}

func selectionSort(_ arrOriginal: [Int]) -> [Int] {
    var arr    = arrOriginal
    var newArr = [Int]()
    for _ in 0..<arr.count {
        let smallestItemIndex = findSmallest(arr: arr)
        let smallestItem      = arr[smallestItemIndex]
        newArr += [smallestItem]
        arr.remove(at: smallestItemIndex)
    }
    return newArr
}


// Testing

print(selectionSort([1, 2, 3, 4, 5]))
print(selectionSort([5, 4, 3, 2, 1]))
print(selectionSort([5, 50, 3, 100, 1]))
