class GradeSchool {
  Map<int, Set<String>> db = {};
  
  // your code here ...
  List<String> grade(int grade) {
    Set<String>? students = db[grade];
    if (students == null) return [];
    
    return List<String>.from(students)..sort();
  }
  
  List<String> roster() {
    List<String> allStudents = [];
    List<int> sortedGrades = db.keys.toList()..sort();
    
    for (var grade in sortedGrades) {
      Set<String> studentsInThisGrade = db[grade]!;
      List<String> listStudents = studentsInThisGrade.toList();
      listStudents.sort();
      allStudents.addAll(listStudents);
    }
    
    return allStudents;
  }

  List<bool> add(List<(String, int)> list) {
    List<bool> results = <bool>[];
    
    for (final tupla in list) {
      bool isInvalid = false;
      // Desestruturação para acessar elementos em tuplas
      final (name, grade) = tupla;
      
      for (Set<String> students in db.values) {
        if (students.contains(name)) {
          results.add(false);
          isInvalid = true;
        };
      }
      if (isInvalid) continue;
      
      // Se a série ainda não existe no map, criamos um novo set
      db.putIfAbsent(grade, () => <String>{});
      db[grade]!.add(name);
      results.add(true);
    }
    
    return results;
  }
}