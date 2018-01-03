# Quick Sort 
# O(nlogn)
# Take integer Array and sort 
# Mahmud Ahsan

def quick_sort(array):
    if len(array) < 2:
        return array
    
    pivot        = array[0] # assume first element as pivot
    less         = [i for i in array if i < pivot]
    greater      = [i for i in array if i > pivot]
    equal        = [i for i in array if i == pivot]
    
    return quick_sort(less) + equal + quick_sort(greater)

#Testing
    
print(quick_sort([1, 2, 4, 4, 5, 1, 3]))
print(quick_sort([5.0, 4.0, 3.0, 2.0, 1.0]))
print(quick_sort(["love", "like", "play", "cool", "my"]))