class SecretHandshake {
  // Put your code here
  List<String> commands(int num) {
    List<String> actions = [];
      
    if ((num & 1) != 0) {
      actions.add("wink");
    } 
    if ((num & 2) != 0) {
      actions.add("double blink");
    } 
    if ((num & 4) != 0) {
      actions.add("close your eyes");
    } 
    if ((num & 8) != 0) {
      actions.add("jump");
    } 
    if ((num & 16) != 0) {
      actions = actions.reversed.toList();
    }
    return actions;
}
  
}
