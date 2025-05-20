class Solution {
  bool isZeroArray(List<int> nums, List<List<int>> queries) {
    List<int> diff = List.filled(nums.length+1,0);
    for(final i in queries){
        final int a = i[0];
        final int b = i[1];
        diff[a]++;
        diff[b+1]--;
    }

    int sum = 0;
    for(int i=0;i<nums.length;++i){
        sum+= diff[i];
        if(sum < nums[i]){
            return false;
        }
    }
    return true;
  }
}