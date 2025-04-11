class Solution {
  List<int> sortedSquares(List<int> nums) {
    final List<int> ans = List.filled(nums.length,0);

    int left = 0; int right = nums.length-1;
    int pos = nums.length-1;

    while(right>= left){
        if(nums[left].abs() >= nums[right].abs()){
            ans[pos] = nums[left].abs() * nums[left].abs();
            left ++;
        }else{
            ans[pos] = nums[right].abs() * nums[right].abs();
            right--;
        }
        pos--;
    }
    return ans;
  }
}