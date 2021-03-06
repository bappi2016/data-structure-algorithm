# Selection Sort 
# O(n^2)
# Take integer Array and sort 
# Mahmud Ahsan

def findSmallest(arr):
    smallest_item  = arr[0]
    smallest_index = 0
    for i in range(1, len(arr)):
        if arr[i] < smallest_item:
            smallest_item  = arr[i]
            smallest_index = i
    return smallest_index
    
def selectionSort(arr):
    new_arr = []
    for i in range(len(arr)):
        smallest_item = arr.pop(findSmallest(arr))
        new_arr.append(smallest_item)
    return new_arr
    
#Testing
    
print(selectionSort([1, 2, 3, 4, 5]))
print(selectionSort([5.0, 4.0, 3.0, 2.0, 1.0]))
print(selectionSort(["love", "like", "play", "cool", "my"]))