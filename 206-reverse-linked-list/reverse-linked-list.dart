/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? curr = head; // first starting which will be moved to end
    ListNode? prev = null; //will become current head;
    while(curr != null ){
        ListNode? temp = curr.next; // save the next node before we reverse the link
        curr.next = prev; // reverse the link: point current node to the previous node
        prev = curr; // move prev forward to current node
        curr = temp; // move curr forward to the next node (saved in temp)
    }
    return prev;
  }
}