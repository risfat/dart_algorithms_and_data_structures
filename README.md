---

# Dart Algorithms and Data Structures

This project contains several fundamental algorithms and data structures implemented in Dart. The goal is to provide clear, easy-to-understand code for common coding problems that are often asked in technical interviews.

## Contents

The following algorithms and problems are implemented in this project:

1. **Check if a String is a Palindrome**
2. **Two Sum Problem**
3. **Longest Common Subsequence**
4. **Reverse a Linked List**
5. **Quicksort Algorithm**
6. **Mergesort Algorithm**

## How to Run

### Prerequisites

- [Dart SDK](https://dart.dev/get-dart) installed on your machine.

### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/risfat/dart_algorithms_and_data_structures.git
   cd dart_algorithms_and_data_structures
   ```

2. Run the `algorithms.dart` file:
   ```bash
   dart run algorithms.dart
   ```

3. The output of each algorithm will be printed in the terminal.

## Example Usage

### 1. Check if a String is a Palindrome

```dart
bool isPalindrome(String str) {
  // Function to check if a string is a palindrome
}

print(isPalindrome("radar")); // true
print(isPalindrome("hello")); // false
```

### 2. Two Sum Problem

```dart
List<int> twoSum(List<int> nums, int target) {
  // Function to return indices of two numbers that add up to a target
}

print(twoSum([2, 7, 11, 15], 9)); // [0, 1]
```

### 3. Longest Common Subsequence

```dart
int longestCommonSubsequence(String text1, String text2) {
  // Function to find the longest common subsequence between two strings
}

print(longestCommonSubsequence("abcde", "ace")); // 3
```

### 4. Reverse a Linked List

```dart
class ListNode {
  int value;
  ListNode? next;
  ListNode(this.value);
}

ListNode? reverseLinkedList(ListNode? head) {
  // Function to reverse a singly linked list
}
```

### 5. Quicksort Algorithm

```dart
List<int> quicksort(List<int> arr) {
  // Function to perform quicksort on an array
}

print(quicksort([3, 6, 8, 10, 1, 2, 1])); // [1, 1, 2, 3, 6, 8, 10]
```

### 6. Mergesort Algorithm

```dart
List<int> mergesort(List<int> arr) {
  // Function to perform mergesort on an array
}

print(mergesort([38, 27, 43, 3, 9, 82, 10])); // [3, 9, 10, 27, 38, 43, 82]
```

## Project Structure

- `dart_algorithms_and_data_structures.dart`: The main file containing all the algorithm implementations.
- `README.md`: This file, which explains the project and how to use it.

## Contributing

If you'd like to contribute to this project, feel free to fork the repository and submit a pull request. Suggestions for improvements or additional algorithms are always welcome!

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---