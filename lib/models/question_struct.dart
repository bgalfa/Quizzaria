class QuizQuestion {
  const QuizQuestion(this.question, this.choices);
  final String question;
  final List<String> choices; //1st option is always the correct one;

  List<String> shuffleAnswers() {
    final shuffled = List.of(choices); //Copy the list of choices to a new list
    shuffled.shuffle(); //In place shuffling of the 'shuffled' list items
    return shuffled;
  }
}
