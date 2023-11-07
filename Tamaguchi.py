class Ações:
    def __init__(self, nome):
        self.nome = nome
        self.comendo = False
        self.falando = False
        self.dormindo = False
        self.pararando = True

    def comer(self):
        if self.falando == True:
            print(f"{self.nome} não pode comer pois estã falando")
        elif self.dormindo == True:
            print(f"{self.nome} não pode comer pois estã dormindo")
        elif self.comendo == True:
            print(f"{self.nome} já está comendo")
        else:
            print(f"{self.nome} começou a comer")
            self.comendo = True
            self.pararando = False

    def falar(self):
        if self.comendo == True:
            print(f"{self.nome} não pode falar pois estã comendo")
        elif self.dormindo == True:
            print(f"{self.nome} não pode falar pois estã dormindo")
        elif self.falando == True:
            print(f"{self.nome} já está falando")
        else:
            print(f"{self.nome} começou a falar")
            self.falando = True
            self.pararando = False

    def dormir(self):
        if self.comendo == True:
            print(f"{self.nome} não pode dormir pois estã comendo")
        elif self.falando == True:
            print(f"{self.nome} não pode dormir pois estã falando")
        elif self.dormindo == True:
            print(f"{self.nome} já está dormindo")
        else:
            print(f"{self.nome} foi dormir")
            self.dormindo = True
            self.pararando = False

    def parar(self):
        if self.comendo == True:
            print(f"{self.nome} parou de comer")
            self.comendo = False
            self.pararando = True
        elif self.falando == True:
            print(f"{self.nome} parou de falar")
            self.falando = False
            self.pararando = True
        elif self.dormindo == True:
            print(f"{self.nome} acordou")
            self.dormindo = False
            self.pararando = True
        elif self.pararando == True:
            print(f"{self.nome} já está parado")