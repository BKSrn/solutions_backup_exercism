// Put your code here
bool isValid(String str) {
  int peso = 10;
  int somaTotal = 0;
  List<int> arrInt = [];
  
  List<String> arrString = str.split("");
  arrString.removeWhere((ele) => ele == "-");
  if (arrString.length < 10 || arrString.length > 10) return false;
  
  for (int i = 0; i < arrString.length; i++) {
    String char = arrString[i];
    
    if (char.toUpperCase() == "X" && i == 9) {
      arrInt.add(10);
    } else {
      int? num = int.tryParse(char);
      if (num == null) return false;
      arrInt.add(num);
    }

  }
  
  //arrInt = arrString.map((str) => int.parse(str)).toList();
  
  for (int num in arrInt) {
    somaTotal += num * peso;
    peso--;
  }
  
  if (somaTotal % 11 == 0) return true;
  return false;
}
