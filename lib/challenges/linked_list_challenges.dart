import '../linked_list.dart';

/**
Challenge 1: Print in Reverse
Create a function that prints the nodes of a linked list in reverse order. For example:
1 -> 2 -> 3 -> null
// should print out the following:
3
2
1*
* **/

void printListInReverse<E>(LinkedList<E> list) {
  printNodesRecursively(list.head);
}

void printNodesRecursively<T>(Node<T>? node) {
  // 1
  if (node == null) return;
  // 2
  printNodesRecursively(node.next);
  // 3
  print(node.value);
}

/**
Challenge 2: Find the Middle Node
Create a function that finds the middle node of a linked list. For example:
1 -> 2 -> 3 -> 4 -> null
// middle is 3
1 -> 2 -> 3 -> null
// middle is 2
* */

Node<E>? getMiddle<E>(LinkedList<E> list) {
  var slow = list.head;
  var fast = list.head;
  while (fast?.next != null) {
    fast = fast?.next?.next;
    slow = slow?.next;
  }
  return slow;
}