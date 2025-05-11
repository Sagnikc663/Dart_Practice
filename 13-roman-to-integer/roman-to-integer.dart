class Solution {
  int romanToInt(String s) {
    int result = 0;
    for(int i=0;i<s.length;i++){
        if(i+1<s.length && ((toRoman(s[i])) < toRoman(s[i+1]))){
            ///Eg. This case checks Instead, the number four is written as IV
            ///As in IV, I-1,V-5,so I<V , then=> IV = 5-1 = 4; or susbtract i 
            ///==from result
            result -= toRoman(s[i]);
        }else{ 
        result += toRoman(s[i]);
         }
    }
    return result;
  }

  int toRoman(String s){
    switch(s.toLowerCase()){
        case 'i':
            return 1;
        case 'v':
            return 5;
        case 'x':
            return 10;
        case 'l':
            return 50;
        case 'c':
            return 100;
        case 'd':
            return 500;
        case 'm':
            return 1000;
        default:
            return 0;
    }
  }
}