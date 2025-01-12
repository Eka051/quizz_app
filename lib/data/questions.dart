import 'package:quizz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion('What are the main building blocks of FlutterUIs?', [
    'Widgets',
    'Elements',
    'Blocks',
    'Functions',
  ]),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By using the Flutter UI designer',
    'By using the Flutter UI builder',
    'By defining widget in config file',
  ]),
  QuizQuestion('What is the main function in Flutter?', [
    'main()',
    'runApp()',
    'startApp()',
    'run()',
  ]),
  QuizQuestion('What\'s the the purpose of a StatefulWidgets?', [
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that doesn\'t depend on data',
  ]),
  QuizQuestion('What\'s the the purpose of a StatelessWidget?', [
    'Render UI that doesn\'t depend on data',
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
  ]),
  QuizQuestion('What\'s the the purpose of a MaterialApp?', [
    'To define the app\'s structure',
    'To define the app\'s theme',
    'To define the app\'s layout',
    'To define the app\'s navigation',
  ]),
];
