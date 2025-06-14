class Solution {
  List<int> buildArray(List<int> nums) {
    List<int> ans = List.filled(nums.length,0);
    for(int i=0;i<nums.length;i++){
        if(nums[i] >= 0 && nums[i]< nums.length){
            ans[i] = nums[nums[i]];
        }else{
            ans[i] = 0;
        }
    }
    return ans;
  }
}