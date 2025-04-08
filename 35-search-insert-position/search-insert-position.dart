class Solution {
  int searchInsert(List<int> nums, int target) {
    if(nums.isEmpty) return 0;

    int left = 0;
    int right = nums.length;

    while(left < right){
        int mid = (left+right) ~/2;
        if(nums[mid] >= target){
            right = mid;
        }else{
            left = mid+1;
        }
    }

    return left;
  }
}