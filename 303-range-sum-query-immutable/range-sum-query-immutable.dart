class NumArray {
final List<int> prefix = [];
int count = 0;
  NumArray(List<int> nums) {
    
    for(final i in nums){
        count += i;
        prefix.add(count);
    }
  }
  
  int sumRange(int left, int right) {
    final rightSum = prefix[right];
    final leftSum = left > 0 ? prefix[left-1] : 0;
    return rightSum - leftSum;
  }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * NumArray obj = NumArray(nums);
 * int param1 = obj.sumRange(left,right);
 */