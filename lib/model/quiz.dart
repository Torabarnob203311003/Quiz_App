 class Quiz{
  final String question;
  final List<String>option;

  Quiz({
    required this.question,
    required this.option

 });
  //greater
 get shuffleOption{
   final shuffleOption = List.of(option);
   shuffleOption.shuffle();
   return shuffleOption;




   
 }
 }