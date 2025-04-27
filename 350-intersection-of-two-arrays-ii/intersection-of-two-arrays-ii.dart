class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    ///------------BRUTE FORCE APPROACH----------------------
    // ///Create 2 maps to keep track elements and frequency
    // Map<int,int> map1 = {};
    // Map<int,int> map2 = {};
    // List<int> ans = [];

    // ///Keeping track of frequency for first array elements
    // for(final i in nums1){
    //     if(map1.containsKey(i)){
    //         map1[i] = (map1[i]!) + 1;
    //     }else{
    //         map1[i] = 1;
    //     }
    // }

    // ///Keeping track of frequency for second array elements
    // for(final i in nums2){
    //     if(map2.containsKey(i)){
    //         map2[i] = (map2[i]!) + 1;
    //     }else{
    //         map2[i] = 1;
    //     }
    // }

    // ///Comparing if the key exists and how many times (Using clamp(lower,upper))
    // ///Add in the ans list for that specific key
    // for(final key in map1.keys){
    //     if(map2.containsKey(key)){
    //         ///This ensures minFrequency is the lower of the two frequencies (map1[key] and map2[key]).
    //         final minFrequency = (map1[key]!).clamp(0,map2[key]!);
    //         ans.addAll(List<int>.filled(minFrequency,key));
    //     }
    // }
    //return ans;

    ///-----OPTIMIZED APPROACH--------------
    Map<int,int> map1 = {};
    List<int> ans = [];

    for(final i in nums1){
        map1[i] = (map1[i] ?? 0) + 1;
    }

    for(final i in nums2){
        if(map1.containsKey(i) && map1[i]! > 0){
            ans.add(i);
            map1[i] = map1[i]! - 1;

            if(map1[i]! == 0){
                map1.remove(i);
            }
        }
    }

    return ans;
  }
}