
import 'package:dart_algorithms_and_data_structures/dart_algorithms_and_data_structures.dart';

void main() {
  // Test for isPalindrome
  print('Palindrome Check:');
  print(isPalindrome("radar")); // true
  print(isPalindrome("hello")); // false

  // Test for twoSum
  print('\nTwo Sum:');
  print(twoSum([2, 7, 11, 15], 9)); // [0, 1]

  // Test for Longest Common Subsequence
  print('\nLongest Common Subsequence:');
  print(longestCommonSubsequence("abcde", "ace")); // 3

  // Test for Reverse Linked List
  print('\nReversing a Linked List:');
  ListNode node1 = ListNode(1);
  ListNode node2 = ListNode(2);
  ListNode node3 = ListNode(3);
  node1.next = node2;
  node2.next = node3;

  ListNode? reversedHead = reverseLinkedList(node1);
  while (reversedHead != null) {
    print(reversedHead.value); // 3 2 1
    reversedHead = reversedHead.next;
  }

  // Test for Quicksort
  print('\nQuicksort:');
  print(quicksort([3, 6, 8, 10, 1, 2, 1])); // [1, 1, 2, 3, 6, 8, 10]

  // Test for Mergesort
  print('\nMergesort:');
  print(mergesort([38, 27, 43, 3, 9, 82, 10])); // [3, 9, 10, 27, 38, 43, 82]

  // Test for Binary Search
  print('\nBinary Search:');
  print(binarySearch([2, 7, 11, 15], 2)); // 0

  // Test for Selection Sort
  print("\nSelection Sort: ");
  print(selectionSort([3, 6, 8, 10, 1, 2, 1])); // [1, 1, 2, 3, 6, 8, 10]

  // Test for Bubble Sort
  print("\nBubble Sort: ");
  print(bubbleSort([3, 6, 8, 10, 1, 2, 1])); // [1, 1, 2, 3, 6, 8, 10]
}
