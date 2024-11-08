import 'dart:io';
import 'dart:math';
class Character {
  String? name;
  int health;
  int attack;
  int defense;
  bool alive = true;
  
  //생성자
  Character(this.name, this.health, this.attack, this.defense);

  int attackAction(){
    return this.attack;
  }

  bool defenseAction(int attacked) {
    int damage = attacked - this.defense;
    if (damage>=0) this.health -= damage;
    if (this.health <= 0){
      print('사망하셨습니다. 게임을 다시 도전해주세요');
      return this.alive = false;
    } else {
      return this.alive;
    }
  }
  void incrementDefense() {
    this.defense += 1;
  }
  void incrementAttack() {
    this.attack += 1;
  }
}

class Monster extends Character {
  String? name;
  int health;
  int defense = 0;
  int attack;
  bool alive = true;

  //생성자
  Monster(this.name, this.health, this.attack) : super('', 0, 0, 0);

  @override
  int attackAction() {
    //randomizing the output 0<=value<=attack
    return Random(42).nextInt(attack +1);
  }
  //attacked
  void getattacked(int attacked) {
    this.health -= attacked;
    checkDeath();
    if (this.alive == false){
      print('적을 처치하셨습니다!');
    }
  }
  //check if dead
  void checkDeath() {
    if (health <=0){this.alive = false;}
  }
  @override
  void incrementDefense() {
    this.defense += 2;
  }
}

String getCharacterName(){
  print('캐릭터 이름을 정해주세요 (한글은 깨져요 ㅠㅠ)');
  return stdin.readLineSync()!;
}