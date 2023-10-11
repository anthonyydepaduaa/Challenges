from Funções import *
A = ['1', '2', '3']
B = ['', '']
nomes(B)
print("1 para pedra, 2 para papel e 3 para tesoura")
j1 = str(input("Jogada de {}:".format(B[0])))
while j1 not in A:
	j1 = str(input("Jogada de {}:".format(B[0])))
j2 = str(input("Jogada de {}:".format(B[1])))
while j2 not in A:
	j2 = str(input("Jogada de {}:".format(B[1])))
empate(j1, j2, B)
resultado(j1, j2, B)