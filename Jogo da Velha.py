from Funções import *
j1 = 'A'
j2 = 'B'
A = ['*'] * 9
for x in range(1, 4):
    if x == 1:
        print(A[0], A[1], A[2])
    if x == 1:
        print(A[3], A[4], A[5])
    if x == 1:
        print(A[6], A[7], A[8])
for y in range(1, 10):
    if y %2 == 1:
        j = int(input("Jogada de A:"))
        if j == 1:
            A[0] = 'X'
    else:
        j = int(input("Jogada de B:"))
        if j == 2:
            A[1] = 'O'
    for z in range(1, 4):
        if z == 1:
            print(A[0], A[1], A[2])
        if z == 1:
            print(A[3], A[4], A[5])
        if z == 1:
            print(A[6], A[7], A[8])