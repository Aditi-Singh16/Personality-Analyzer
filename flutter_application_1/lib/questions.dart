import 'package:conditional_questions/conditional_questions.dart';

var lst=[];
List<Question> questions() {
  return [
    PolarQuestion(
        question: "Where do you get your energy ?",
        isMandatory: true,
        answers: ["stimuli within the outside world", "self-reflection and like to stay within \n our own world."],
        //lst.add(answers);
        ),
    PolarQuestion(
        question: "How do you take in information ?",
        isMandatory: true,
        answers: ["Rely on intuition", "Look at patterns, body language,\n or feel the energy in the room"],
        ),
      PolarQuestion(
        question: "How do you make decisions ?",
        isMandatory: true,
        answers: ["Logically thinking ", "Gut feeling or rely on emotions"],
        ),
        PolarQuestion(
        question: "How do you organize your world ?",
        isMandatory: true,
        answers: [" Be prepared and organized", "Act spontaneously"],
        ),
  ];
}