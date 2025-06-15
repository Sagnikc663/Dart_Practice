class Solution {
  List<int> minOperations(String boxes) {
    List<int> ans = List.filled(boxes.length,0);
    int balls = 0;
    int moves = 0;

    for(int i=0;i<boxes.length;i++){
        ans[i] = balls + moves;
        moves += balls;
        balls += int.parse(boxes[i]);
    }

    balls = 0;moves=0;

    for(int i = boxes.length - 1; i >= 0; i--){
        ans[i] += balls + moves;
        moves += balls;
        balls += int.parse(boxes[i]);
    }

    return ans;
    
  }
}