### Task3 ###
# Define the decorator, that added item to the list if length of items in list more than 5 symbols
def mode_list(func):
    def wrapper(*args):
        array_mode = []
        array = func(*args)
        for i in array:
            i_str = str(i)
            if len(i_str) >= 5:
                array_mode.append(i_str)
        print('The array with usernames are greater than 5 symbols:')
        return array_mode
    return wrapper
@mode_list
# Define the func, that print list of any arguments
def list(*args):
    array = []
    for i in args:
        array.append(i)
    return array

l1 = list('username_1','us','username_3','use','username_5','bob','username_77','dr','username_101',33,34567)
print(l1)