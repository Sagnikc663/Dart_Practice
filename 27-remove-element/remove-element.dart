class Solution {
  int removeElement(List<int> nums, int val) {
    int left =0, right =nums.length-1;
    int count =0;
    for(int i=0;i<nums.length;i++){ 
        if(nums[i] != val){
            nums[count] = nums[i];
            count++;
        }
            // left++;
    }   
    return count;
  }
}