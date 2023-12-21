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

// Challenge 1: Reverse a List using Stack
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

// Challenge 2: Balance the Parentheses using Stack
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
