class Solution {
  bool isPalindrome(String s) {
    s = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').trim().toLowerCase();
    print('normal $s abnormal ${s.split('').reversed.join('')}');
    return s.split('').reversed.join('') == s;
  }
}