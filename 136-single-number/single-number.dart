class Solution {
  int singleNumber(List<int> nums) {
    ///result ^ i (eg: 0 ^ 2 = 2; 2^2= 0 ; 0^1=1; ans = 1)
   int result = 0;
   for(final i in nums){
    result = result ^ i;
   }
   return result;
  }
}