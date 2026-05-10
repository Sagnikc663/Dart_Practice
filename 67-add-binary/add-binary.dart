class Solution {
  String addBinary(String a, String b) {
    StringBuffer st = new StringBuffer();
    int lenA = a.length -1;
    int lenB = b.length - 1;
    int carry = 0;

    while(lenA >= 0 || lenB >= 0 || carry> 0){
        int sum  = carry;
        if(lenA>=0){
            sum += int.parse(a[lenA]);
            lenA--;
        }
         if(lenB>=0){
            sum += int.parse(b[lenB]);
            lenB--;
        }

        st.write(sum % 2);
        carry = sum ~/2;
    }

    return st.toString().split('').reversed.join('');
  }
}