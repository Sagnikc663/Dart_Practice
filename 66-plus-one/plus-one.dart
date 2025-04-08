class Solution {
  List<int> plusOne(List<int> digits) {
    int last = digits.length-1;
    while(last>=0){
        if(digits[last] < 9){
        digits[last] += 1;
        return digits;
        }
        digits[last] = 0;
        last --;        
    }
digits.insert(0, 1);
    return digits;
  }
}