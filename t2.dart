void main() {
  String str = 'abacdcabba';
  int n = str.length;
  print('All palindromes in the string:' + str);

  for (int i = 0; i < n; i++) {
    for (int j = i + 1; j <= n; j++) {
      String sub = str.substring(i, j);
      if (isPalindrome(sub) && sub.length > 1) {
        print(sub);
      }
    }
  }
}

bool isPalindrome(String s) {
  int left = 0, right = s.length - 1;
  while (left < right) {
    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}
