class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  Question(text: 'Aşağıdakilerden hangisi bileşik ad değildir?', options: [
    const Option(text: 'A)Akbaba ', isCorrect: false),
    const Option(text: 'A)Akdeniz ', isCorrect: false),
    const Option(text: 'A)Kahveci ', isCorrect: true),
    const Option(text: 'A)Kabadayı ', isCorrect: false),
  ]),
  Question(
      text:
          'Bir çıkarma işleminde eksilen, çıkan ve farkın toplamı 396 dır. Buna göre eksilen sayı aşağıdakilerden hangisidir? ',
      options: [
        const Option(text: 'A)56 ', isCorrect: false),
        const Option(text: 'A)57 ', isCorrect: false),
        const Option(text: 'A)145 ', isCorrect: true),
        const Option(text: 'A)198 ', isCorrect: false),
      ]),
];
