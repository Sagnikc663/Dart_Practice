class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    /// nums1 length m real value nums2 length n real value total length m+n-1

    int last = m+n-1;

    while(m>0 && n>0){
        if(nums1[m-1] > nums2[n-1]){
            nums1[last] = nums1[m-1];
            m--;
        }
        else{
            nums1[last] = nums2[n-1];
            n--;
        }
        last--;
    } 

    while(n>0){
        nums1[last] = nums2[n-1];
        n--;
        last--;
    }
  }
}