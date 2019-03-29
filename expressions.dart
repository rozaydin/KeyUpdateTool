class rozaydin {

  int value = 5;

  rozaydin() {
    return;
  }

  void printTest() {
    print("${this.value}");
  }

}



void main() {

  Future future = new Future((){

    throw 'some error occured!';    
  });

  future.then((value){

    print("future resolved value: $value");

  }, onError: (error) {
    print("error occured! $error");
  }) .catchError((anotherError){
    print("another error occured! $anotherError");
  });





  int number = 5;
  Type runtimeType = number.runtimeType;
  print("$runtimeType");

  print("${double.nan == double.nan}");

  String string1 = """

hello

""";

String string2 = "hell\vo 1"
"hello 2"
"hello 3";

  print("$string2");

  print(r'raw \r \n \t string');


  List<int> value = const [1, 2, 2, 3];
  print("${value}");

  Map test = const <String, String> {"R1":"r2", "R3":"r3"};
print("${test}");

Map test2 = new Map()..["r1"] = "r1" .. ["r2"] = "r2";
print("${test2}");

 new rozaydin().printTest();

  


}
