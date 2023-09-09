import 'package:data_structure/linked_list.dart';
import 'package:data_structure/stack.dart';

void main(List<String> arguments) {
  final list = LinkedList<int>();
  list.push(-33);
  list.push(2);
  list.push(1);
  for(int el in list) {
    print(el);
  }
}

