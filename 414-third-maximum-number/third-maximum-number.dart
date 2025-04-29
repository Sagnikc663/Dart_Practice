class Solution {
  int thirdMax(List<int> nums) {
    ///Brute Force   
    // nums = nums.toSet().toList();
    // nums..sort((a,b)=>b.compareTo(a));
    // if(nums.length>=3){
    //     return nums[2];
    // }else{
    //     return nums[0];
    // }
    
///O(n)Approach

int? max1,max2,max3;
    for(final int i in nums){
        if(i == max1 || i == max2 || i == max3) continue;
        if(max1==null || i > max1){
            max3 = max2;
            max2 = max1;
            max1 = i;
        }
        else if(max2 == null || i > max2){
            max3 = max2;
            max2 = i;
        }else if(max3 == null || i> max3){
            max3 = i;
        }
    }

    return max3 ?? max1 ?? 0;
  }
}