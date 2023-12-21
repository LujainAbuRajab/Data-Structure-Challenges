
# :newspaper: Data-Structure-Challenges
# :small_red_triangle_down: Stacks:
## :o:  Challenges:

#### :small_red_triangle_down: Challenge 1: Reverses a given list using a stack:
```dart
void reverseListUsingStack(List<int> list) {
  Stack<int> stack = Stack();

  for (int element in list) {
    stack.push(element);
  }

  List<int> reversedList = [];

  while (stack.isNotEmpty) {
    reversedList.add(stack.pop());
  }

  print("Reversed List: $reversedList");
}
```
#### :small_red_triangle_down: Challenge 2: Checks if parentheses in a given expression are balanced using a stack:
```dart
bool isBalancedParentheses(String expression) {
  Stack<String> stack = Stack();

  for (int i = 0; i < expression.length; i++) {
    String char = expression[i];

    if (char == '(') {
      stack.push(char);
    } else if (char == ')') {
      if (stack.isEmpty || stack.pop() != '(') {
        return false;
      }
    }
  }

  return stack.isEmpty;
}
```
#### :o: Stack Class:  A stack implementation that stores elements of type int, and included Stacks essential functions like: push, pop, peek, etc..
   ```dart
  class Stack<int> {
    final _list = <int>[];

    void push(int value) => _list.add(value);

    int pop() => _list.removeLast();

    int get peek => _list.last;

    bool get isEmpty => _list.isEmpty;
    bool get isNotEmpty => _list.isNotEmpty;

    @override
    String toString() => _list.toString();
  }
  ```
#### :o: 'main' Function: The main function that demonstrates the usage of the provided challenges. 
```dart
void main() {
  // Challenge 1: Reverse a List
  List<int> originalList = [1, 2, 3, 4, 5];
  print("Original List: $originalList");
  reverseListUsingStack(originalList);

  // Challenge 2: Balance the Parentheses
  String expression1 = "(a + b) * (c - d)";
  String expression2 = "((a + b) * c - d";
  
  print("\nBalanced Parentheses Check:");
  print("$expression1 is balanced: ${isBalancedParentheses(expression1)}");
  print("$expression2 is balanced: ${isBalancedParentheses(expression2)}");
}
```
# :small_red_triangle_down: LinkedList:
## :o:  Challenges:
#### :o: 'main' Function: The main function that demonstrates the usage of the provided challenges. 
```dart
void main(){
  Node<int>? linkedlist7=Node(value: 7,next: null);
  Node<int>? linkedlist6=Node(value: 6,next: linkedlist7);
  Node<int>? linkedlist5=Node(value: 5,next: linkedlist6);
  Node<int>? linkedlist4=Node(value: 4,next: linkedlist5);
  Node<int>? linkedlist3=Node(value: 7,next: linkedlist4);
  Node<int>? linkedlist2=Node(value: 2,next: linkedlist3);
  Node<int>? linkedlist1=Node(value: 1,next: linkedlist2);

  // Print the original linked list
  print(linkedlist1.toString());

  // Print the linked list in reverse order
  linkedlist1.printInRevers();

  // Find and print the middle element of the linked list
  linkedlist1.findTheMid();

  // Reverse the linked list and print it
  Node<int>? reversedList = Node.reverseLinkedList(linkedlist1);
  print(reversedList.toString());

  // Remove duplicates from the reversed linked list and print it
  reversedList?.removeDuplicates();
  print(reversedList?.toString());
}
```
#### :small_red_triangle_down: Node class: Define a generic Node class for a singly linked list included all the functions that ganna help to solve all Challenges that required.
```dart
class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;

  // Challenge 1: Print the linked list in reverse order
  void printInRevers() {
    if (next == null) {
      print('$value');
      return;
    }
    next?.printInRevers();
    print('$value');
  }
  
  // Override toString to display the linked list as a string
  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }

  //Challenge 2: Find the Middle Node
  // Find and print the middle element of the linked list
  void findTheMid() {
    if (next == null) {
      print(value);
    }

    Node<T>? current = next;
    Node<T>? prev = next;
    while (current?.next != null && current?.next?.next != null) {
      prev = prev?.next;
      current = current?.next?.next;
    }
    print(prev?.value);
  }

  //Challenge 3: Reverse a Linked List
  // Static method to reverse a linked list
  static Node<T>? reverseLinkedList<T>(Node<T>? linklist) {
    Node<T>? prev = null;
    Node<T>? current = linklist;
    Node<T>? nextNode;

    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }

    return prev;
  }
  // Challenge 4: Remove All Occurrences 
  // Remove duplicates from the linked list
  void removeDuplicates() {
    Node<T>? current = this;

    while (current != null && current.next != null) {
      Node<T>? runner = current;

      while (runner?.next != null) {
        if (runner?.next!.value == current.value) {
          runner?.next = runner?.next!.next;
        } else {
          runner = runner?.next;
        }
      }

      current = current.next;
    }
  }
}
```
#### 	:ringed_planet: THANKS FOR YOUR TIME























