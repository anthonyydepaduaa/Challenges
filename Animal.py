class Animal
    def __init__(self, nome, cor):
        self.nome = nome
        self.cor = cor
    def comer(self):
        print(f"{self.nome} está comendo")
    def som(self):
        print(f"{self.nome} está emitindo som")

class Gato(Animal):
    def __init__(self):
        super().__init__()
    def som(self):
        print(f"{self.nome} está miando")
class Cachorro(Animal):
    def __init__(self):
        super().__init__()
    def som(self):
        print(f"{self.nome} está latindo")
class Cavalo(Animal):
    def __init__(self):
        super().__init__()
    def som(self):
        print(f"{self.nome} está relinchando")
class Vaca(Animal):
    def __init__(self):
        super().__init__()
    def som(self):
        print(f"{self.nome} está mugindo")