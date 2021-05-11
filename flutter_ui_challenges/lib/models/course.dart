import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/models/lesson.dart';
import 'package:flutter_ui_challenges/models/question.dart';
import 'package:meta/meta.dart';

class Course {
  final String name;
  final String difficulty;
  final Color color;
  final List<Lesson> lessons;

  Course({
    @required this.name,
    @required this.difficulty,
    @required this.color,
    @required this.lessons,
  });

  static final List<Course> courses = [
    new Course(
      name: "Spanish",
      difficulty: "Beginer",
      color: Color(0xFFFAAB3B),
      lessons: [
        new Lesson(
          name: "Basic",
          icon: 'assets/icons/basic.svg',
          color: Color(0xFFFAAB3B),
          questions: [
            new Question(answered: true, title: "Buenos días"),
            new Question(answered: false, title: "Buenas tardes"),
            new Question(answered: true, title: "Buenas noches"),
            new Question(answered: false, title: "Hola, me llamo Juan"),
            new Question(answered: true, title: "¿Cómo te llamas?"),
          ],
        ),
        new Lesson(
          name: "Occupations",
          icon: 'assets/icons/occupations.svg',
          color: Color(0xFFF03E56),
          questions: [
            new Question(answered: false, title: "¿Usted es ingeniero?"),
            new Question(answered: true, title: "¿En qué trabaja usted?"),
            new Question(answered: false, title: "Yo soy pescador"),
            new Question(answered: true, title: "Oye ¿Qué haces tú?"),
            new Question(answered: false, title: "Marta es contadora en una compañía."),
          ],
        ),
        new Lesson(
          name: "Conversation",
          icon: 'assets/icons/conversations.svg',
          color: Color(0xFF5592D9),
          questions: [
            new Question(answered: true, title: "¿Qué tal?"),
            new Question(answered: false, title: "¿Qué pasa?"),
            new Question(answered: true, title: "Estoy bien, ¿y tú?"),
            new Question(answered: false, title: "Estoy estupendo"),
            new Question(answered: true, title: "Gracias"),
          ],
        ),
        new Lesson(
          name: "Places",
          icon: 'assets/icons/places.svg',
          color: Color(0xFF2FC75C),
          questions: [
            new Question(answered: false, title: "La casa"),
            new Question(answered: true, title: "El departamento"),
            new Question(answered: false, title: "El hotel"),
            new Question(answered: true, title: "La estación de autobús"),
            new Question(answered: false, title: "La estación de bomberos"),
          ],
        ),
        new Lesson(
          name: "Family Member",
          icon: 'assets/icons/family.svg',
          color: Color(0xFF9839F0),
          questions: [
            new Question(answered: true, title: "Padre"),
            new Question(answered: false, title: "Madre"),
            new Question(answered: true, title: "Abuelos"),
            new Question(answered: false, title: "Abuela"),
            new Question(answered: true, title: "Abuelo"),
          ],
        ),
        new Lesson(
          name: "Foods",
          icon: 'assets/icons/foods.svg',
          color: Color(0xFF9839F0),
          questions: [
            new Question(answered: false, title: "La zanahoria"),
            new Question(answered: true, title: "La lechuga"),
            new Question(answered: false, title: "El tomate"),
            new Question(answered: true, title: "La patata"),
            new Question(answered: false, title: "La maíz"),
          ],
        ),
      ],
    ),
    new Course(
      name: "Japanese",
      difficulty: "Advanced",
      color: Color(0xFF2FC75C),
      lessons: [
        new Lesson(
          name: "Basic",
          icon: 'assets/icons/basic.svg',
          color: Color(0xFFFAAB3B),
          questions: [
            new Question(answered: true, title: "おはようございます"),
            new Question(answered: false, title: "こんにちは"),
            new Question(answered: true, title: "おやすみなさい"),
            new Question(answered: false, title: "こんにちは、私の名前はフアンです"),
            new Question(answered: true, title: "お名前は何ですか？"),
          ],
        ),
        new Lesson(
          name: "Occupations",
          icon: 'assets/icons/occupations.svg',
          color: Color(0xFFF03E56),
          questions: [
            new Question(answered: false, title: "あなたはエンジニアですか？"),
            new Question(answered: true, title: "何に取り組んでいますか？"),
            new Question(answered: false, title: "私は漁師です"),
            new Question(answered: true, title: "何やってんの？"),
            new Question(answered: false, title: "マルタは会社の会計士です。"),
          ],
        ),
        new Lesson(
          name: "Conversation",
          icon: 'assets/icons/conversations.svg',
          color: Color(0xFF5592D9),
          questions: [
            new Question(answered: true, title: "調子はどう？"),
            new Question(answered: false, title: "何が起こるのですか？"),
            new Question(answered: true, title: "私はいい感じです、あなたは？"),
            new Question(answered: false, title: "私は素晴らしいです"),
            new Question(answered: true, title: "ありがとう"),
          ],
        ),
        new Lesson(
          name: "Places",
          icon: 'assets/icons/places.svg',
          color: Color(0xFF2FC75C),
          questions: [
            new Question(answered: false, title: "ホームホーム"),
            new Question(answered: true, title: "デパート"),
            new Question(answered: false, title: "ホテル"),
            new Question(answered: true, title: "バス停"),
            new Question(answered: false, title: "消防署"),
          ],
        ),
        new Lesson(
          name: "Family Member",
          icon: 'assets/icons/family.svg',
          color: Color(0xFF9839F0),
          questions: [
            new Question(answered: true, title: "パパ"),
            new Question(answered: false, title: "母"),
            new Question(answered: true, title: "祖父母"),
            new Question(answered: false, title: "おばあちゃん"),
            new Question(answered: true, title: "おじいちゃん"),
          ],
        ),
        new Lesson(
          name: "Foods",
          icon: 'assets/icons/foods.svg',
          color: Color(0xFF9839F0),
          questions: [
            new Question(answered: false, title: "人参"),
            new Question(answered: true, title: "レタス"),
            new Question(answered: false, title: "トマト"),
            new Question(answered: true, title: "ポテト"),
            new Question(answered: false, title: "トウモロコシ"),
          ],
        ),
      ],
    ),
    new Course(
      name: "German",
      difficulty: "Intermediate",
      color: Color(0xFFF5592D9),
      lessons: [
        new Lesson(
          name: "Basic",
          icon: 'assets/icons/basic.svg',
          color: Color(0xFFFAAB3B),
          questions: [
            new Question(answered: true, title: "Guten Morgen"),
            new Question(answered: false, title: "guten Tag"),
            new Question(answered: true, title: "Gute Nacht"),
            new Question(answered: false, title: "Hallo, ich heiße Hans"),
            new Question(answered: true, title: "Wie heißen Sie?"),
          ],
        ),
        new Lesson(
          name: "Occupations",
          icon: 'assets/icons/occupations.svg',
          color: Color(0xFFF03E56),
          questions: [
            new Question(answered: false, title: "Du bist ein Ingenieur?"),
            new Question(answered: true, title: "Woran arbeitest du?"),
            new Question(answered: false, title: "Ich bin ein Fischer"),
            new Question(answered: true, title: "Hey, was machst du?"),
            new Question(answered: false, title: "Marta ist Buchhalterin in einem Unternehmen."),
          ],
        ),
        new Lesson(
          name: "Conversation",
          icon: 'assets/icons/conversations.svg',
          color: Color(0xFF5592D9),
          questions: [
            new Question(answered: true, title: "Wie geht's?"),
            new Question(answered: false, title: "Was geschieht?"),
            new Question(answered: true, title: "Mir geht es gut und dir?"),
            new Question(answered: false, title: "ich bin fantastisch"),
            new Question(answered: true, title: "Vielen Dank"),
          ],
        ),
        new Lesson(
          name: "Places",
          icon: 'assets/icons/places.svg',
          color: Color(0xFF2FC75C),
          questions: [
            new Question(answered: false, title: "Zuhause"),
            new Question(answered: true, title: "Die Abteilung"),
            new Question(answered: false, title: "Das Hotel"),
            new Question(answered: true, title: "Die Bushaltestelle"),
            new Question(answered: false, title: "Die Feuerwache"),
          ],
        ),
        new Lesson(
          name: "Family Member",
          icon: 'assets/icons/family.svg',
          color: Color(0xFF9839F0),
          questions: [
            new Question(answered: true, title: "Papa"),
            new Question(answered: false, title: "Mutter"),
            new Question(answered: true, title: "Großeltern"),
            new Question(answered: false, title: "Oma"),
            new Question(answered: true, title: "Opa"),
          ],
        ),
        new Lesson(
          name: "Foods",
          icon: 'assets/icons/foods.svg',
          color: Color(0xFF9839F0),
          questions: [
            new Question(answered: false, title: "Die Karotte"),
            new Question(answered: true, title: "Grüner Salat"),
            new Question(answered: false, title: "Tomate"),
            new Question(answered: true, title: "Die Kartoffel"),
            new Question(answered: false, title: "Mais"),
          ],
        ),
      ],
    ),
  ];
}
