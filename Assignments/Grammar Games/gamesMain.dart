//import 'dart:async';
import 'dart:io';
//import 'dart:convert';
import 'dart:math';
import 'individuals.dart';


Character loadStats(String filename) {
  try {
    final file = File(filename);
    final contents = file.readAsStringSync();
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
}
List<Monster> loadMStats(String filename){
  try {
    final file = File(filename);
    final contents = file.readAsLinesSync();
    List<Monster> monster_list = [];
    for(var content in contents){
      
      final stats = content.split(',');
      if (stats.length != 3) throw FormatException('Invalid monster data');    
      String name  = stats[0];
      int health = int.parse(stats[1]);
      int attack = int.parse(stats[2]);    
      Monster monster = Monster (name, health, attack);
      monster_list.add(monster);
    }
    return monster_list;
  } catch (e) {
    print('몬스터 데이터를 불러오는 데 실패했습니다: $e');
    exit(1);  
  }
}

Character loadCharacterStats(){
  return loadStats('C:\\Users\\green\\SPARTA2024\\learning_flutter_dart\\Assignments\\Grammar Games\\characters.txt');
}

List<Monster> loadMonsterStats(){
//call 3 monsters
  //for(int i; i<3; i++){
    //
return loadMStats('C:\\Users\\green\\SPARTA2024\\learning_flutter_dart\\Assignments\\Grammar Games\\monsters.txt');
}
  



void main() {
  print('여기는 행복한 고담시티');
  print('당신은 이세계 트럭에 의해 이곳으로 넘어온 용사입니다.');
  print('저기 히어로들이 당신을 쫓아오고 짜증나게 하는데 한번 혼쭐부터 내줄까요?');

  print('게임을 시작하시겠습니까? (y)');
  int track_turns = 0;
  if (stdin.readLineSync() == 'y'){
    print('용사님, 당신의 이름은 무엇입니까?');
    Character user = loadCharacterStats();
    print('$user님, 이세계 생활을 응원합니다');
    print('당신의 현재 스테이터스입니다. 체력 : ${user.health}, 공격력 : ${user.attack}, 방어력 : ${user.defense}');
    print('공격력 만큼 상대방의 체력을 깎을 수 있고 깎고, 공격을 받을때 방어력 만큼 체력이 덜 깎이는 시스템입니다.');
    print('이세게에 익숙하지 않은 당신, 튜토리얼로 겸 적응 겸 해서 저 히어로에게 선빵을 날릴 수 있게 해드릴게요 :) ');
    List<Monster> apponents = loadMonsterStats();
    Monster apponent = apponents[0];
    int killCount = 0;
    bool close = false;  
    //start game
    while(close == false && killCount < apponents.length){
      int choiceAction = inputAction(user);
      try {
        track_turns += 1;
        if (track_turns>0 && track_turns%3 == 0){
          print('3번째 턴 마다 상대방의 방어력이 2 오릅니다!');
          apponent.incrementDefense();
        }
        if(apponent.alive == true) {print('상대방의 체력은 ${apponent.health}, 공격력은 ${apponent.attack}, 방어력은 ${apponent.defense}인 ${apponent.name}입니다!');}
        else{killCount ==1; apponent = apponents[killCount];} 

        switch (choiceAction){
          //힐
          case 0:
            var chance = Random().nextInt(10);
            if (chance <= 7) {print('failed to heal');}
            else {user.health += 10; print('successfully healed');}
            actions(user, apponent);
            //choiceAction = inputAction(user);
          //공격
          case 1:
            apponent.getattacked(user.attack);
            print('상대방의 남은 체력은 ${apponent.health}입니다.');
            actions(user, apponent);
            //choiceAction = inputAction(user);
          //방어
          case 2: 
            print('방어를 선택하셨군요! 공격할 힘까지 보태서 방어에 전념하는 모습, 당신은 금강불괴입니다.');
            user.defense += user.attack;
            actions(user,apponent);
            user.defense -= user.attack;
            //choiceAction = inputAction(user);
          
          case 3: 
            print('어떤 아이템을 사용하시겠습니까?');
            print('아이템을 사용하는것은 턴을 소비 하지 않습니다!');
            print('1: 공격력 +1, 2: 방어력+1');
            try {
              int itemNum = int.parse(stdin.readLineSync()!);
              //item usage
              switch (itemNum) {
                case 1: 
                  user.incrementAttack();
                  print('당신의 공격력은 이제 ${user.attack}입니다.');
                case 2:
                  user.incrementDefense();
                  print('당신의 방어력은 이제 ${user.defense}입니다');
              }
            } catch (e) {
              print(e);
              print('returning to previous choice');
            }

          //저장 및 종료
          case 4:
            print('현재 상황을 저장하고 종료하겠습니다.');
            //ToDo: save changes in CSV
            //shutDown();
            saveCurrent(user, apponent);
            close = true;

          default: 
            print('잘못된 입력입니다. 다시 입력해주세요');
            //choiceAction = inputAction(user);


        }
      } catch (e){
        print(e);
        print('오류에 따라 시스템을 강제종료합니다.');
        close = true;
        shutDown();
        break;
      }

    }
    if (close == true){
      shutDown();
      //break;
    } else if(killCount ==apponents.length-1){
      shutDown();
      print('모든 몬스터를 처치하였습니다.');
    }

  } else {
    shutDown();

  }

}

//shutdown function
void shutDown() {
  print('다음에 봐요. 게임은 여기서 종료하겠습니다.');
}

//user interactions to iterate over
int inputAction(Character user) {
  print('your turn, ${user.name}');
  print('chose your action');
  print('0: heal(+10 health) by 30% chance, 1: attack, 2: guard(attack point added to defense), 3: use items, 4: save and close');
  int action = int.parse(stdin.readLineSync()!);
  print('$action을 입력하셨습니다.');
  return action;
}

//actions to iterate over
void actions(Character user, Monster apponent){
  print('상대방의 공격이 들어옵니다!');
  bool life = user.defenseAction(apponent.attackAction());
  if (life == true) {print('당신의 남은 체력은 ${user.health}입니다.');}
  else {shutDown();}
}

//toDo: make function for reading monsters and pulling up one after another
void saveCurrent(Character user, Monster apponent){
  //saving player stats
  final file = File('save_file.txt');
  file.writeAsStringSync('Charcter: ${user.name}, ${user.health}, ${user.defense}, ${user.alive}');
  //saving monster stats
  file.writeAsStringSync('Monster: ${apponent.name}, ${apponent.health}, ${apponent.attack}, ${apponent.defense}');
  

}