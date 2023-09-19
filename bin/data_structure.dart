import 'package:data_structure/challenges/linked_list_challenges.dart';
import 'package:data_structure/linked_list.dart';
import 'package:data_structure/queue.dart';

void main(List<String> arguments) {
  final queue = QueueList<String>();
  queue.enqueue('Ray');
  queue.enqueue('Brian');
  queue.enqueue('Eric');
  print(queue);
  queue.dequeue();
  print(queue);
  print(queue.peek);
  print(queue);
}

void printNodesRecursively<T>(Node<T>? node) {
  // 1
  if (node == null) return;
  print(node.value);
  // 2
  printNodesRecursively(node.next);
  // 3
}

void printListInReverse<E>(LinkedList<E> list) {
  printNodesRecursively(list.head);
}