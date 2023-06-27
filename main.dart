abstract class Character {
  final String name;
  final int healthPoints;
  final int strength;
  final int defence;
  final int magicResistance;
  final String _test = "toto";

  Character(
      {required this.name,
      required this.healthPoints,
      required this.strength,
      required this.defence,
      required this.magicResistance});

  sayHello() {
    print("Bonjour, mon nom est ${this.name}");
  }
}

class Wizard extends Character {
  final int magicStrength;

  Wizard(
      {required super.name,
      super.healthPoints = 30,
      super.strength = 8,
      super.defence = 10,
      super.magicResistance = 15,
      this.magicStrength = 17});
}

class Fighter extends Character {
  Fighter(
      {required super.name,
      super.healthPoints = 50,
      super.strength = 18,
      super.defence = 15,
      super.magicResistance = 5});

  attackWithSword() {
    print("${this.name} attaque avec une épée !");
  }
}

characterFactory(className, charName) {
  switch (className) {
    case 'wizard':
      return Wizard(name: charName);
    case 'fighter':
      return Fighter(name: charName);
    default:
      return null;
  }
}

main() {
  print('''
  *------------------------*
          CLI RPG <3 !
  *------------------------*
  ''');

  // print("Choisissez une classe : wizard");
  // String? className;
  // while (className == null) {
  //   className = stdin.readLineSync();
  // }

  Wizard wizard = characterFactory('wizard', 'Albus');

  print(wizard.name);
  print(wizard.healthPoints);
  print(wizard.strength);
  print(wizard.magicStrength);

  Fighter fighter = characterFactory('fighter', 'Izidor');

  fighter.sayHello();
  fighter.attackWithSword();
}
