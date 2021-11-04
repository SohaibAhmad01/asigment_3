import 'dart:math';

Random random = new Random();
int randomNumber = random.nextInt(10);

class AnswerLogic{
  bool checkAnswer(int num){
    if(randomNumber==num){
      return true;
    }
    else return false;
  }
}