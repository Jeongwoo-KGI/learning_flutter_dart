import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'dart:math';


Future<Character> loadStats(String filename) async{
  if (filename.contains('char')){
    try {
      final file = File(filename);
      final contents = await file.readAsStringSync();
      final stats = contents.split(',');
      if (stats.length != 3) throw FormatException('Invalid character data');
        
      int health = int.parse(stats[0]);
      int attack = int.parse(stats[1]);
      int defense = int.parse(stats[2]);
        
      String? name = getCharacterName();
      Character character = Character(name, health, attack, defense);
      return character;
    } catch (e) {
      print('캐릭터 데이터를 불러오는 데 실패했습니다: $e');
      exit(1);  
    }
  } else {
      try {
      final file = File(filename);
      final contents = await file.readAsStringSync();
      final stats = contents.split(',');
      if (stats.length != 3) throw FormatException('Invalid character data');
        
      String name  = stats[0];
      int health = int.parse(stats[1]);
      int attack = int.parse(stats[2]);
        
      Monster monster = Monster (name, health, attack);
      return monster;
    } catch (e) {
      print('몬스터 데이터를 불러오는 데 실패했습니다: $e');
      exit(1);  
    }
  }

}

Character loadCharacterStats(){
  loadStats('characters.txt');
}

Monster loadMonsterStats(){
  loadStats('monsters.txt');


}

class Character {
  String? name;
  int health;
  int attack;
  int defense;
  
  //생성자
  Character(this.name, this.health, this.attack, this.defense);

  int attackAction(){
    return this.attack;
  }

  void defenseAction(int attacked) {
    this.health -= attacked - this.defense;
  }
}

class Monster extends Character {
  String? name;
  int health;
  int defense = 0;
  int attack;

  //생성자
  Monster(this.name, this.health, this.attack) : super('', 0, 0, 0);

  @override
  int attackAction() {
    //randomizing the output 0<=value<=attack
    return Random(42).nextInt(attack +1);
  }
}

String? getCharacterName(){
  print('캐릭터 이름을 정해주세요 (한글은 깨져요 ㅠㅠ)');
  return stdin.readLineSync();
}

void main() {
  print('여기는 행복한 고담시티');
  print('당신은 이세계 트럭에 의해 이곳으로 넘어온 용사입니다.');
  print('저기 히어로들이 당신을 쫓아오고 짜증나게 하는데 한번 혼쭐부터 내줄까요?');

  print('게임을 시작하시겠습니까? (y/n)');

  if (stdin.readLineSync() == 'y'){
    print('용사님, 당신의 이름은 무엇입니까?');
    Character user = loadCharacterStats();

  }

}