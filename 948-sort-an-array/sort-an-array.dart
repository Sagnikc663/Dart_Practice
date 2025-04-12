class Solution {
  List<int> sortArray(List<int> nums) {
    if(nums.length <=1) return nums;
    int mid = nums.length ~/2;
    List<int> left = nums.sublist(0,mid);
    List<int> right = nums.sublist(mid); 

     left = sortArray(left);
     right = sortArray(right);

     return merged(left,right);
  }


  List<int> merged(List<int> left,List<int> right){
    List<int> ans = [];
    int i=0,j=0;
    while(i<left.length && j<right.length){
        if(left[i] < right[j]){
            ans.add(left[i]);
            i++;
        }else{
            ans.add(right[j]);
            j++;
        }
    }

    while(i<left.length){
        ans.add(left[i]);
        i++;
    }

    while(j<right.length){
        ans.add(right[j]);
        j++;
    }

    return ans;
  }
}