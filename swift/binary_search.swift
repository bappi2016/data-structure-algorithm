// Binary Search 
// O(log n)
// Input data must be sorted to find an element

func binary_searh(list: [Int], item: Int) -> Int? {
    var low = 0
    var high = list.count - 1
    
    while low <= high {
        var mid = Int((low + high) / 2)
        
        if item == list[mid] {
            return mid
        }
        else if item < list[mid] {
            high = mid - 1
        }
        else {
            low = mid + 1
        }
    }
    return nil
}

// Testing

let items = [1, 2, 3, 5, 7, 9, 14, 19, 50]
print(binary_searh(list: items, item: 9))
print(binary_searh(list: items, item: 10))
print(binary_searh(list: items, item: 50))
print(binary_searh(list: items, item: 3))
