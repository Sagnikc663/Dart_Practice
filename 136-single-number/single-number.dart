class Solution {
  int singleNumber(List<int> nums) {
   int result = 0;
   for(final i in nums){
    result = result ^ i;
   }
   return result;
  }
}