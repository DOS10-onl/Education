### Task4 ###
# Define decorator, that store function's calls
def cache(func):
    memo = {}
    def wrapper(*args):
        if not memo.get(args):
            g = func(*args)
            memo[args] = g
            print('Function is caching now')
            return g
        else:
            print('This value from cache')
            return memo[args]
    return wrapper

@cache
# Define func, that multiply args
def multiply(x,y):
    m = x*y
    return m

# l1 = multiply(18,4)
# print(l1)

@cache
# Define func, that devide args
def devide(x,y):
    d = x/y
    return d

# l2 = devide(18,3)
# print(l2)