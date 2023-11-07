p = str(input("Palavra:"))
A = ['_'] * len(p)
B = [''] * len(p)
t = 5
for x in range(len(p)):
    B[x] = p[x]
while t > 0:
    if A == B:
        print(f"A palavra é {p}")
        break
    l = str(input("Letra:"))
    if l in p:
        print(f"{l} está na palavra")
        if p.count(l) > 1:
            for y in range(len(p)):
                if p[y] == l:
                    A[y] = l
        else:
            A[p.index(l)] = l
    if l not in p:
        t = t - 1
        print(f"{l} não está na palavra")
        print(f"{t} tentativas restantes")
        if t == 0:
            print("Sem tentativas")
            print(f"A palavra era {p}")
    print(A)
    plv = str(input("Palavra:"))
    if plv == p:
        print(f"A palavra é {p}")
        break
    else:
        print("Palavra errada")