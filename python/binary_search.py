# Binary Search 
# O(log n)
# Input data must be sorted to find an element
# Mahmud Ahsan

def binary_search(list, item):
    low = 0
    high = len(list) - 1

    while low <= high:
        mid = int((low + high) / 2)

        if item == list[mid]:
            return mid
        elif item < list[mid]:
            high = mid - 1
        else:
            low = mid + 1

    return None

#testing

items1 = [1, 2, 3, 5, 7, 9, 14, 19, 50] #sorted
items2 = ["love", "like", "play", "cool", "my"]

print(binary_search(items1, 9))
print(binary_search(items1, 10))
print(binary_search(items1, 50))
print(binary_search(sorted(items2), "like"))
