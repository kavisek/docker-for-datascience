import numpy as np
import time

print('Running Numpy and List Runtime Comparison')

iterations = 100000

# Numpy array Example
print('\n Running Numpy Example')
array = np.random.randint(0,10000, 1000)
print(f'Length of {len(array)}\nDataType: {type(array)}')

t0 = time.time()
for i in range(iterations):
    array_sum = array.sum()
t1 = time.time()
numpy_example = t1-t0
print(f'Runtime: {numpy_example} seconds')


# List Example
print('\nRunning List Example')
lst = list(array)
print(f'Length of {len(lst)}\nDataType: {type(lst)}')

t0 = time.time()
for i in range(iterations):
    array_sum = sum(array)
t1 = time.time()
list_time = t1-t0
print(f'Runtime {list_time} seconds')

print(f'\nNumpy is {round(list_time/numpy_example,4)} faster in this example.')


