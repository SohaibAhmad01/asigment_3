class Question {
  String qText;
  bool qAns;

  Question(this.qText, this.qAns);
}

class QuizBrain {
  int _qNo = 0;

  List<Question> _questions = [
    Question(
        'You should maintain at least 1 metre distance between yourself and anyone who is coughing or sneezing.',
        true),
    Question(
        'It is safe to shake hands with your neighbours as you know them well.',
        false),
    Question('Covid-19 virus can spread through droplets in air.', true),
    Question(
        'Aged people and children are more prone to get infected with virus.',
        true),
    Question(
        'You can wear a mask for more than 2 days without washing it.', false),
    Question(
        '"Stay Home Stay Safe" is not applicable for healthy people.', false),
    Question(
        'Washing your hands with soap and water kills viruses that may be on your hands. ',
        true),
    Question('You are not safe if your mask has any holes or tears', true),
    Question('People who smoke are at high risk of Covid-19.', true),
    Question('You can dispose your mask anywhere you like after usage.', false),
    Question('Covid-19 can be caught from a person who has no symptoms', true),
    Question('Corona viruses are a large family of viruses', true),
    Question(
        'Humans cannot become infected with the COVID-19 from an animal source',
        false),
    Question(
        '1 out of every 2 people who gets Covid-19 fall seriously ill.', false),
    Question('Antibiotics can prevent or treat the Covid-19.', false),
  ];

  void nextQuestion() {
    if (_qNo < _questions.length - 1) _qNo++;
  }

  String getQuestion() {
    return _questions[_qNo].qText;
  }

  bool getAnswer() {
    return _questions[_qNo].qAns;
  }

  int getCountOfQuestions() {
    return _questions.length;
  }

  bool isFinished() {
    if (_qNo == _questions.length - 1)
      return true;
    else
      return false;
  }

  void reset() {
    _qNo = 0;
  }
}
