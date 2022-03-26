import 'package:conditional_questions/conditional_questions.dart';

List<Question> questions() {
  return [
    PolarQuestion(
      
        question: "1. Where do you get your energy ?",
        answers: ["stimuli within the outside world", "self-reflection and like to stay within \n our own world."],
        isMandatory: true,
        //lst.add(answers);
        ),
    PolarQuestion(
        question: "2. How often do you make new friends ?",
        isMandatory: true,
        answers: ["Regularly,Love meeting new people", "I enjoy my own company,\nI am more of a reserved type.."],
        ),
    PolarQuestion(
        question: "3. How are you at social events ?",
       isMandatory: true,
        answers: ["Introduce myself and mix up with other people", "rarely try to introduce yourself to new people\n and mostly talk to the ones you already know."],
    ),
    PolarQuestion(
        question: "4. How often do you contact your friends?",
       isMandatory: true,
        answers: ["Wait for them to contact me", "I contact them and initiates activities"],
        //lst.add(answers);
    ),
    PolarQuestion(
        question: "5. Do you enjoy attention ?",
       isMandatory: true,
        answers: ["I enjoy people noticing me", "No, I get embarrassed "],
        //lst.add(answers);
    ),
        
    PolarQuestion(
        question: "6. How do you take in information ?",
       //isMandatory: true,
        answers: ["Rely on intuition", "Look at patterns, body language,\n or feel the energy in the room"],
    ),
    PolarQuestion(
        question: "7. Which statement do you most relate to?",
       isMandatory: true,
        answers: ["Sometimes I have trouble focusing \non the task at hand", "I wish it were easier for me to\n go with the flow of things"],
    ),
    PolarQuestion(
        question: "8. Do you panic when you commit a mistake ?",
      //  isMandatory: true,
        answers: ["Start doubting my overall abilities \nand knowledge", "Learn from my mistake and move on"],
    ),
    PolarQuestion(
        question: "9. You are kind of person who ?",
     //   isMandatory: true,
        answers: ["Follows your heart", "Follows your mind"],
    ),
    PolarQuestion(
        question: "10. The world will be a better place if ?",
       isMandatory: true,
        answers: ["People relied more on rationality and facts", "Rely on feelings and act accordingly"],
    ),
    PolarQuestion(
        question: "11. what is the best way to persuade you ?",
      //  isMandatory: true,
        answers: ["Strong emotional appeal", "A great logical explanation"],
    ),
    
    PolarQuestion(
        question: "12. How do you make decisions ?",
        isMandatory: true,
        answers: ["Logically thinking ", "Gut feeling or rely on emotions"],
    ),
    PolarQuestion(
        question: "13. Which of these qualities suits your personality ?",
       isMandatory: true,
        answers: ["Blunt and honest", "Empathetic and emotional"],
    ),
    PolarQuestion(
        question: "14. How compassionate would you consider yourself ?",
        isMandatory: true,
        answers: [" Very, I open my heart to everyone", "Not very,I don't let my feelings \ninfluence my choices"],
    ),
    PolarQuestion(
        question: "15. When it comes to work what is your fatal flaw? ?",
        isMandatory: true,
        answers: [" I can be too technical and \ntalk over other's head", "I let emotions of a situation\n disrupt my workflow"],
    ),
    PolarQuestion(
        question: "16. How do you organize your world ?",
        isMandatory: true,
        answers: [" Be prepared and organized", "Act spontaneously"],
    ),
    PolarQuestion(
        question: "17. How do you usually work ?",
        isMandatory: true,
        answers: ["Create a to-do-list and follow it", "Just take things as it comes"],
    ),
     PolarQuestion(
        question: "18. Which work style describes you ?",
        isMandatory: true,
        answers: ["Can't relax until everything planned \nis completed", "I see how the day unfolds \nand adjust accordingly"],
    ),
     PolarQuestion(
        question: "19. At your worst, how would you be described ?",
        isMandatory: true,
        answers: ["Disorganized and flaky", "Opiniated and uptight"],
    ),
     PolarQuestion(
        question: "20. Do you tend to procrastinate ?",
        isMandatory: true,
        answers: [" No, I hate putting away things \nfor the last minute", "Always,I work better under pressure"],
    ),
  ];
}