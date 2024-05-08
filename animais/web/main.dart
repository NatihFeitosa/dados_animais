void main(){
  Cachorro cachorro1 = Cachorro("Dora", "Feminino", "Emilie", 13, "Poodle");
  Cachorro cachorro2 = Cachorro("Apolo", "Masculino", "Júlia", 6, "SRD");
  Cachorro cachorro3 = Cachorro("Bia", "Feminino", "João Maurício", 6, "Pinscher");
  Cachorro cachorro4 = Cachorro("Kira", "Feminino", "Julia Vitoria", 8, "Lhasa-Apso");

  Gato gato1 = Gato("Manu", "Feminino", "Júlia", 4, "Cinza");

  cachorro1.printAnimal();
  cachorro1.printCachorroRaca();

  cachorro2.printAnimal();
  cachorro2.printCachorroRaca();
  cachorro2.lavarAnimal();
  cachorro2.secarAnimal();
  cachorro2.tosarAnimal();

  cachorro3.printAnimal();
  cachorro3.printCachorroRaca();

  cachorro4.printAnimal();
  cachorro4.printCachorroRaca();

  gato1.printAnimal();
  gato1.printGatoCor();
  gato1.lavarAnimal();
  gato1.secarAnimal();
  gato1.tosarAnimal();
}

class Animal implements Lavatorio{
  String nome;
  String sexo;
  String tutor;
  int idade;

  Animal(this.nome, this.sexo, this.tutor, this.idade);

  void printAnimal(){
    print("=== DADOS DO ANIMAL: ===\n"
    "NOME: $nome\n"
    "SEXO: $sexo\n"
    "TUTOR: $tutor\n"
    "IDADE: $idade");
  }
  
  @override
  void lavarAnimal() {
    print("O animal $nome tomou banho.");
  }
  
  @override
  void secarAnimal() {
    print("O animal $nome foi seco.");
  }
  
  @override
  void tosarAnimal() {
    print("O animal $nome foi tosado.");
  }


}

class Cachorro extends Animal{
  String raca;

  Cachorro(String nome, String sexo, String tutor, int idade, this.raca)
    :super(nome, sexo, tutor, idade);

  void printCachorroRaca(){  
    print("RAÇA DO CACHORRO: $raca");
  }
}

class Gato extends Animal{
  String cor;

  Gato(String nome, String sexo, String tutor, int idade, this.cor)
    :super(nome, sexo, tutor, idade);

    void printGatoCor(){  
    print("COR DO GATO: $cor");
  }

  @override
  void lavarAnimal(){
    print("O animal $nome tomou banho a seco.");
  }

  @override
  void secarAnimal(){
    print("O animal $nome não necessita de secagem.");
  }
}

abstract class Lavatorio{
  void lavarAnimal();
  void secarAnimal();
  void tosarAnimal();
}