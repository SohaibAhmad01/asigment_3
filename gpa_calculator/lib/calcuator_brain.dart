import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.c1, this.m1,this.c2,this.m2,this.c3,this.m3});

  final double m1;
  final double c1;

  final double m2;
  final double c2;

  final double m3;
  final double c3;

  double cgpa;

  double gpa;

  double gpaCalculator(double weight){
    double gpa;

    if(weight>=90){
      gpa = 4.0;
      return gpa;
    }
    else if(weight>=85 && weight<=89){
      gpa = 3.7;
      return gpa;
    }
    else if(weight>=80 && weight<=84){
      gpa = 3.3;
      return gpa;
    }
    else if(weight>=75 && weight<=79){
      gpa = 3.0;
      return gpa;
    }
    else if(weight>=70 && weight<=74){
      gpa = 2.7;
      return gpa;
    }
    else if(weight>=65 && weight<=69){
      gpa = 2.3;
      return gpa;
    }
    else if(weight>=65 && weight<=69){
      gpa = 2.3;
      return gpa;
    }
    else if(weight>=60 && weight<=64){
      gpa = 2.0;
      return gpa;
    }
    else if(weight>=55 && weight<=59){
      gpa = 1.7;
      return gpa;
    }
    else if(weight>=50 && weight<=54){
      gpa = 1.3;
      return gpa;
    }
    else{
      gpa = 0.0;
      return gpa;
    }
  }

  String calculateBMI() {
    double a = gpaCalculator(m1);
    double b = gpaCalculator(m2);
    double c = gpaCalculator(m3);

    cgpa = a*c1 +b*c2 + c*c3;
    cgpa = cgpa/(c1+c2+c3);

    return cgpa.toStringAsFixed(1);
  }

  String getResult() {
    if (cgpa == 4.0) {
      return 'ALPHA!!!';
    }
    else if (cgpa > 3.7) {
      return 'WELL DONE';
    }
    else if (cgpa > 3.3) {
      return 'Good Job';
    }
    else if (cgpa > 3.0) {
      return 'Keep working hard';
    }
    else{
      return 'NEED to work hard';
    }
  }

  String getInterpretation() {
    if (cgpa >= 4.0) {
      return 'With bigger power comes bigger responsibility';
    }
    else if (cgpa > 3.7) {
      return 'You are already ahead of table';
    }
    else if (cgpa > 3.3) {
      return "You're perfect as you are and you can change the world";
    }
    else if (cgpa > 3.0) {
      return "You're only competition is you";
    }
    else{
      return "Nothing is impossible, it's just the matter of your mindset";
    }
  }
}
