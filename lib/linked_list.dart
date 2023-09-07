class Node<T> {
  final T value;
   Node<T>? next;

  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {

  Node<E>? head;
  Node<E>? tail;
  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value) {
    // 1
    if (isEmpty) {
      push(value);
      return;
    }
    // 2
    tail!.next = Node(value: value);
    // 3
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    //1
    var currentNode = head;
    var currentIndex = 0;

    //2
    while(currentNode!.next != null && currentIndex < index){
      currentNode = currentNode.next;
      currentIndex += 1;
    }

    //3
    return currentNode;
  }

  Node<E> insertAfter(Node<E> node, E value) {
    // 1
    if (tail == node) {
      append(value);
      return tail!;
    }
    // 2
    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  E? pop(){
    final value = head?.value;
    head = head?.next;
    return value;
  }

  E? removeLast() {
    // 1
    if (head?.next == null) return pop();
    // 2
    var current = head;
    while (current!.next != tail) {
      current = current.next;
    }
    // 3
    final value = tail?.value;
    tail = current;
    tail?.next = null;
    return value;
  }

  E? removeAfter(Node<E> node) {
    final value = node.next?.value;
    if (node.next == tail) {
      tail = node;
    }
    node.next = node.next?.next;
    return value;
  }

}