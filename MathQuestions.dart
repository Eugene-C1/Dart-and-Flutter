import "dart:math";
import "dart:io";

class MathQuestion {
  late String question;
  late double answer;

  MathQuestion(String aQuestion, double aAnswer) {
    this.question = aQuestion;
    this.answer = aAnswer;
  }
}

double promptDouble(String promptText) {
  print(promptText);
  double myNum = double.parse(stdin.readLineSync());
  return myNum;
}

void main() {
  List<MathQuestion> questions = [
    MathQuestion("3 + 5", 8.0),
    MathQuestion("10 - 7", 17.0),
    MathQuestion("100 * 9", 900.0)
  ];

  int score = 0;

  for (MathQuestion mathQuestion in questions) {
    double userAnswer = promptDouble(mathQuestion.question);
    if (userAnswer == mathQuestion.answer) {
      score++;
    }
  }

  print("You got ${score}/${questions.length}");
}
