// n pode usar alias de type dentro de classes
// alias type igual no ts 
typedef Callback<T> = bool Function(T);

class Strain {
  List<T> keep<T>(List<T> values, Callback<T> fn) {
    // List<dynamic> lista;
    return values.where(fn).toList();
  }
  
  List<T> discard<T>(List<T> values, Callback<T> fn) {
    return values.where((ele) => !fn(ele)).toList();
  }
  
}