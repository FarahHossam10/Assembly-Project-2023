### This Project is an implementation for the binary search algorithm using Assembly language.


## How to use:
The sorted array that we search for the element in is explicitly defined as arr, the number that we search for is stored in a variable called key, 
we then seaarch for key in arr using the steps of binary search algorithm in which we find the middle element in arr and compare it to key, if they're 
equal then hurray we found the element in our arr, a message is then displayed stating the position where the element was found, if they aren't equal then
key is either smaller than the middle element or bigger, if key is smaller we decrement the upperbound, if it's bigger we increment the lowerbound, then we recalculate
the middle element and compare it to the key and so on until we find key in arr, if lowerbound becomes greater than upperbound then element is not found and a message 
is displayed stating the sad news.


### You can check out how this code works in more detail here:
https://youtu.be/CPcvYZQduOg?feature=shared
