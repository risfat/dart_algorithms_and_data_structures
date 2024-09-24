import 'dart:math';

// 1. Check if a String is a Palindrome
bool isPalindrome(String str) {
  int left = 0;
  int right = str.length - 1;

  while (left < right) {
    if (str[left] != str[right]) {
      return false; // Characters don't match
    }
    left++;
    right--;
  }
  return true; // All characters matched
}

// 2. Two Sum Problem
List<int> twoSum(List<int> nums, int target) {
  Map<int, int> numMap = {};

  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    if (numMap.containsKey(complement)) {
      return [numMap[complement]!, i];
    }
    numMap[nums[i]] = i;
  }
  throw Exception("No two sum solution found");
}

// 3. Longest Common Subsequence (LCS)
int longestCommonSubsequence(String text1, String text2) {
  int m = text1.length;
  int n = text2.length;
  List<List<int>> dp = List.generate(m + 1, (i) => List.filled(n + 1, 0));

  for (int i = 1; i <= m; i++) {
    for (int j = 1; j <= n; j++) {
      if (text1[i - 1] == text2[j - 1]) {
        dp[i][j] = dp[i - 1][j - 1] + 1;
      } else {
        dp[i][j] = max(dp[i - 1][j], dp[i][j - 1]);
      }
    }
  }
  return dp[m][n];
}

// 4. Reverse a Linked List
class ListNode {
  int value;
  ListNode? next;
  ListNode(this.value);
}

ListNode? reverseLinkedList(ListNode? head) {
  ListNode? prev = null;
  ListNode? current = head;

  while (current != null) {
    ListNode? nextNode = current.next; // Store next node
    current.next = prev; // Reverse the link
    prev = current; // Move prev and current one step forward
    current = nextNode;
  }
  return prev; // New head of the reversed list
}

// 5. Quicksort Algorithm
List<int> quicksort(List<int> arr) {
  if (arr.length <= 1) return arr;
  int pivot = arr[arr.length ~/ 2];
  List<int> left = [];
  List<int> right = [];

  for (int num in arr) {
    if (num < pivot) {
      left.add(num);
    } else if (num > pivot) {
      right.add(num);
    }
  }
  return [...quicksort(left), pivot, ...quicksort(right)];
}

// 6. Mergesort Algorithm
List<int> mergesort(List<int> arr) {
  if (arr.length <= 1) return arr;

  int mid = arr.length ~/ 2;
  List<int> left = mergesort(arr.sublist(0, mid));
  List<int> right = mergesort(arr.sublist(mid));

  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0, j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }
  result.addAll(left.sublist(i));
  result.addAll(right.sublist(j));

  return result;
}
