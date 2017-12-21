# Binary Search, Input data must be sorted

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
list_items = [1, 2, 3, 5, 7, 9, 14, 19, 50]
print(binary_search(list_items, 9))
print(binary_search(list_items, 10))
print(binary_search(list_items, 50))
print(binary_search(list_items, 3))
