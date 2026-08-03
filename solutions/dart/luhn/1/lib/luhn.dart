class Luhn {
  // Put your code here
  bool valid(String str) {
    bool strIsValid = true;  
    int valorTotal = 0;
    List<String> list = str.split("");
    
    list.removeWhere((String ele) {
      if (ele == " ") return true;
      int? num = int.tryParse(ele);
      if (num == null) {
        strIsValid = false;
        return true;
      };
      return false;
    });
    if (!strIsValid) return false;
    if (list.length < 2) return false;
  
    for (int i = list.length - 2; i >= 0; i -= 2) {
      int numDaVez = int.parse(list[i]);
      numDaVez *= 2;
      valorTotal += numDaVez > 9 ? numDaVez - 9 : numDaVez;
    }
    if (list.length % 2 == 0) {
      for (int i = 1; i < list.length; i += 2) {
      valorTotal += int.parse(list[i]);
      }
    } else {
      for (int i = 0; i < list.length; i += 2) {
        valorTotal += int.parse(list[i]);
      }
    }
    
    //if (valorTotal == 0) return false;
    return valorTotal % 10 == 0;
  }
  
}
