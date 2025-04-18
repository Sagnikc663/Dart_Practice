class Solution {
  int search(List<int> nums, int target) {
    if(nums.isEmpty) return -1;

   int left = 0; int right = nums.length-1;
   
   while(right>=left){
     int mid = left+(right-left) ~/2;
    if(nums[mid] == target){
        return mid;
    }else if(nums[mid] > target){
        right = mid-1;
    }else{
        left = mid+1;
    }
   }

   return -1;
  }
}