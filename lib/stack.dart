class Stack<E> {
  Stack() : _storage = <E>[];
  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);
  final List<E> _storage;

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  E get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;

}

/// problem Solving

bool checkParentheses(String text) {
  var stack = Stack<int>();
  final open = '('.codeUnitAt(0);
  final close = ')'.codeUnitAt(0);
  for (int codeUnit in text.codeUnits) {
    if (codeUnit == open) {
      stack.push(codeUnit);
      print(stack);
      print("** " * 10);
    } else if (codeUnit == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
        print(stack);
        print("*-* " * 10);
      }
    }
  }
  print("==" * 20);
  print(stack);
  return stack.isEmpty;
}

// Create a function that prints the contents of a list in reverse order.
void printListItemsReversed<E>(List<E> items) {
  Stack stack = Stack.of(items);
  String result = "";
  while(stack.isNotEmpty) {
    result += stack.pop();
  }
  print(result);
}
