list = [1, 2, 3]
index = len(list) - 1

def reverse(list):
    for i in range(len(list) // 2):
        temp = list[i]
        list[i] = list[index - i]
        list[index - i] = temp
    return list

print(reverse(list))
