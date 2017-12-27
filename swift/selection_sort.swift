// Selection Sort 
// O(n^2)
// Take integer Array and sort 
// Mahmud Ahsan

func findSmallest <T: Comparable> (arr: [T]) -> Int {
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

func selectionSort <T: Comparable> (_ arrOriginal: [T]) -> [T] {
    var arr    = arrOriginal
    var newArr = [T]()
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
print(selectionSort([5.0, 4.0, 3.0, 2.0, 1.0]))
print(selectionSort(["love", "like", "play", "cool", "my"]))
