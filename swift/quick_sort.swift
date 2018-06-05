// Quick Sort 
// O(nlogn)
// Take integer Array and sort 
// Mahmud Ahsan

func quickSort <T: Comparable> (_ array: [T]) -> [T] {
    if array.count < 2 {
        return array
    }
    
    let pivot    = array[0] // assume first element as pivot
    let less     = array.filter { $0 < pivot  }
    let greater  = array.filter { $0 > pivot  }
    let equal    = array.filter { $0 == pivot }
    
    return quickSort(less) + equal + quickSort(greater)
}

// Testing
assert([1, 1, 2, 3, 4, 4, 5] == quickSort([1, 2, 4, 4, 5, 1, 3]))
assert([1.0, 2.0, 3.0, 4.0, 5.0] == quickSort([5.0, 4.0, 3.0, 2.0, 1.0]))
assert(["cool", "like", "love", "my", "play"] == quickSort(["love", "like", "play", "cool", "my"]))