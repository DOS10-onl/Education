### Task 2 ###
# Define the decorator, that return result of function multiply and print arguments(*args, **kwargs)
def print_args(func):
    def wrapper(*args, **kwargs):
        result = func(*args, **kwargs)
        print('The args of function is:')
        if len(args):
            print(args)
        else:
            print(kwargs)
        return (result)
    return wrapper

@print_args
# Define the function, that multiply args
def multiply(x,y,z):
    m = x*y*z
    return (f'The result of multiply is:\n{m}')

l1 = multiply(x=2,y=3,z=5)
print(l1)
