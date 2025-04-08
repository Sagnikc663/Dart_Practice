class Solution {
  int removeDuplicates(List<int> nums) {
    if(nums.length == 0) return 0;

    int ans = 0;

    for(int i=1;i<nums.length;i++){
        if(nums[i-1] != nums[i]){
            ans++;
            nums[ans] = nums[i]; // 111
        }
    }

    return ans+1;
  }
}