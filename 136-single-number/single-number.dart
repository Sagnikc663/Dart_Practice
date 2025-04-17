class Solution {
  int singleNumber(List<int> nums) {
    int ans = 0;
    for(final i in nums){
        ans = i ^ ans;
    }
    return ans;
  }
}