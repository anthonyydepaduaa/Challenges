A = ['1', '2', '3']
B = ['', '']

def nomes(B):
    for x in range(2):
        B[x] = str(input("Nome do jogador:"))

def empate(j1, j2, B):
    while j1 == j2:
        print("Empate")
        j1 = str(input("Jogada de {}:".format(B[0])))
        while j1 not in A:
            j1 = str(input("Jogada de {}:".format(B[0])))
        j2 = str(input("Jogada de {}:".format(B[1])))
        while j2 not in A:
            j2 = str(input("Jogada de {}:".format(B[1])))
def resultado(j1, j2, B):
    if j1 == '1':
        if j2 == '2':
            print("{} ganhou".format(B[1]))
        else:
            print("{} ganhou".format(B[0]))
    if j1 == '2':
        if j2 == '1':
            print("{} ganhou".format(B[0]))
        else:
            print("{} ganhou".format(B[1]))
    if j1 == '3':
        if j2 == '1':
            print("{} ganhou".format(B[1]))
        else:
            print("{} ganhou".format(B[0]))