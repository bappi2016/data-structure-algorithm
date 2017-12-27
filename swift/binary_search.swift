// Binary Search
// O(log n)
// Input data must be sorted to find an element
// Mahmud Ahsan

func binary_searh <T: Comparable> (list: [T], item: T) -> Int? {
    var low = 0
    var high = list.count - 1
    
    while low <= high {
        let mid = Int((low + high) / 2)
        
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

let items1 = [1, 2, 3, 5, 7, 9, 14, 19, 50] //sorted
let items2 = ["love", "like", "play", "cool", "my"]

print(binary_searh(list: items1, item: 9)  ?? "Not found")
print(binary_searh(list: items1, item: 10) ?? "Not found")
print(binary_searh(list: items1, item: 50) ?? "Not found")
print(binary_searh(list: items2.sorted(), item: "like")  ?? "Not found")
