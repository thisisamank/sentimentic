import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:sentiment_dart/sentiment_dart.dart';

class TextAnalysis {
  var complimentURL = 'https://complimentr.com/api';
  var curseURL = 'https://evilinsult.com/generate_insult.php?lang=en&type=json';
  final analyser = Sentiment();
  var analysisResultsComparative;
  final makeComparativePositive = 5;
  var curse;
  var compliment;

  loadResultData() async {
    var complimentResponse = await http.get(complimentURL);
    var curseResponse = await http.get(curseURL);

    var curseJson = jsonDecode(curseResponse.body);
    var complimentJson = jsonDecode(complimentResponse.body);

    curse = curseJson['insult'];
    compliment = complimentJson['compliment'];
  }

  // getResults() => results;

  doAnalysis(String text) {
    loadResultData();
    var analysisResultsAll = analyser.analysis(text);
    analysisResultsComparative =
        analysisResultsAll['comparative'] + makeComparativePositive;
    if (analysisResultsComparative <= 5) {
      return curse;
    }
    if (analysisResultsComparative > 5) {
      return compliment;
    }
  }
}
