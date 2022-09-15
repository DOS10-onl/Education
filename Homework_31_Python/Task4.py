### Task4 ###
# Define decorator, that store function's calls
memo = {}
def cache(func):
    def wrapper(*args, **kwargs):
        if len(args):
            dict_key = (func.__name__ + str(args))
        else:
            dict_key = (func.__name__ + str(kwargs))
        if not memo.get(dict_key):
            g = func(*args, **kwargs)
            memo[dict_key] = g
            print('Function is caching now')
            return g
        else:
            print('This value from cache')
            return memo[dict_key]
    return wrapper

@cache
# Define func, that multiply args
def multiply(x,y):
    m = x*y
    return m

@cache
# Define func, that devide args
def devide(x,y):
    d = x/y
    return d

l1 = multiply(x=18,y=4)
print(l1)
print(memo)
l2 = devide(18,3)
print(l2)
print(memo)
l2 = devide(18,2)
print(l2)
print(memo)
l2 = devide(18,3)
print(l2)
print(memo)