import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double gpa;

  String calculateBMI() {

    if(weight>=90){
      gpa = 4.0;
      return gpa.toStringAsFixed(1);
    }
    else if(weight>=85 && weight<=89){
      gpa = 3.7;
      return gpa.toStringAsFixed(1);
    }
    else if(weight>=80 && weight<=84){
      gpa = 3.3;
      return gpa.toStringAsFixed(1);
    }
    else if(weight>=75 && weight<=79){
      gpa = 3.0;
      return gpa.toStringAsFixed(1);
    }
    else if(weight>=70 && weight<=74){
      gpa = 2.7;
      return gpa.toStringAsFixed(1);
    }
    else if(weight>=65 && weight<=69){
      gpa = 2.3;
      return gpa.toStringAsFixed(1);
    }
    else if(weight>=65 && weight<=69){
      gpa = 2.3;
      return gpa.toStringAsFixed(1);
    }
    else if(weight>=60 && weight<=64){
      gpa = 2.0;
      return gpa.toStringAsFixed(1);
    }
    else if(weight>=55 && weight<=59){
      gpa = 1.7;
      return gpa.toStringAsFixed(1);
    }
    else if(weight>=50 && weight<=54){
      gpa = 1.3;
      return gpa.toStringAsFixed(1);
    }
    else{
      gpa = 0.0;
      return gpa.toStringAsFixed(1);
    }

  }

  String getResult() {
    if (gpa == 4.0) {
      return 'ALPHA!!!';
    }
    else if (gpa > 3.7) {
      return 'WELL DONE';
    }
    else if (gpa > 3.3) {
      return 'Good Job';
    }
    else if (gpa > 3.0) {
      return 'Keep working hard';
    }
    else{
      return 'NEED to work hard';
    }
  }

  String getInterpretation() {
    if (gpa >= 4.0) {
      return 'With bigger power comes bigger responsibility';
    }
    else if (gpa > 3.7) {
      return 'You are already ahead of table';
    }
    else if (gpa > 3.3) {
      return "You're perfect as you are and you can change the world";
    }
    else if (gpa > 3.0) {
      return "You're only competition is you";
    }
    else{
      return "Nothing is impossible, it's just the matter of your mindset";
    }
  }
}
