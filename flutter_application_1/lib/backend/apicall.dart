import 'package:http/http.dart' as http;

class GetPersonalityOfPeople {
  var baseUrl = 'https://aditi-personality-predict.herokuapp.com/personalityPrediction';
  List<String> mbtiPersonality = ['ENFJ','ENFP','ENTJ','ENTP','ESFJ','ESFP','ESTJ','ESTP','INFJ','INFP','INTJ','INTP','ISFJ','ISFP','ISTJ','ISTP'];

  Future<String> fetchPersonality(String my_post) async {
    try{
      final response = await http.get(Uri.parse(baseUrl + '?text=' + my_post));
      return mbtiPersonality[int.parse(response.body)];
    }on Exception catch (_, e){
      return e.toString();
    }
  }
}
