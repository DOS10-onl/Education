import random
# Task 1
colour_array = ['red', 'green', 'yellow']
index_array = random.randint(0,2)
alien_colour = colour_array[index_array]
print('Task 1:')
if alien_colour == 'green':
    print(f'alien is:{alien_colour}\nplayer earned 5 points')
# Task 2
index_array = random.randint(0,2)
alien_colour = colour_array[index_array]
print('Task 2:')
if alien_colour == 'green':
    print(f'alien is:{alien_colour}\nplayer just earned 5 points for shooting the alien')
else:
    print(f'alien is:{alien_colour}\nplayer just earned 10 points')
# Task 3
index_array = random.randint(0,2)
alien_colour = colour_array[index_array]
print('Task 3:')
if alien_colour == 'green':
    print(f'alien is:{alien_colour}\nplayer just earned 5 points for shooting the alien')
elif alien_colour == 'yellow':
    print(f'alien is:{alien_colour}\nplayer just earned 10 points')
else:
    print(f'alien is:{alien_colour}\nplayer just earned 15 points')
# Task 4
index_array = random.randint(0,2)
alien_colour = colour_array[index_array]
print('Task 4:')
age = int(input('Please insert you age: '))
if 0 < age < 2:
    print('you are baby')
elif 2 <= age < 4:
    print('you are toddler')
elif 4 <= age < 13:
    print('you are kid')
elif 13 <= age < 20:
    print('you are teenager')
elif 20 <= age < 65:
    print('you are adult')
elif 65 <= age <= 150:
    print('you are elder')
else:
    print('You entered wrong age, Please check it and try again')