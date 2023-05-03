import 'dart:io';
import 'dart:math';

import '../practice9/practice99.dart';

void main(){
  game();
}

void game(){
  print('Выбери режим игры: 1 - ты загадываешь,  2 - я загадываю');
  String select = stdin.readLineSync()!;
  int anss = int.parse(select);
  if(select == '1'){
    return random_search();
  }else if(select == '2'){
    return random_laptok();
  }
}

void random_search(){
  int random = Random().nextInt(100);
 
  String ans = '';
  int max = 128;
  int min = 0;
  int steps = 0;
  int middle = getMiddle(min, max);
  var count = random;

  while(ans != 'yes'){
    print('your num is $count?');
    ans = stdin.readLineSync()!;
    int random = Random().nextInt(100);
    print(steps);
    if(ans == 'greater'){
      min = middle;
      middle = getMiddle(min, max);
      count = random;
      steps++;

  }else if(ans == 'less'){
    max = middle;
    middle = getMiddle(min, max);
    count = random;
    steps++;
  }


    }
}
int getMiddle(int min, int max){
  return (min + max) ~/ 2;
}


void random_laptok(){


  Random randomm = Random();
  int numberr  = Random().nextInt(100) + 1;
  int guess;

  do{
      print('загадайте число от 0 до 100');
      guess = int.parse(stdin.readLineSync()!);

      if(guess < numberr){
        print('its less , lets do one more time');
      }else if(guess > numberr){
        print('its more , lets do one more time');
      }else{
        print('you guess');
      }

    
  } 
  while(guess != numberr);
}

