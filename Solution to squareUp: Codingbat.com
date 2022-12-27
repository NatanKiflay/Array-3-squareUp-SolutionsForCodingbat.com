/*
This is my personal solution to the problem Array-3-squareUp off of codingbat.com, feel free to leave a comment/message!

Given n>=0, create an array length n*n with the following pattern,
shown here for n=3 : {0, 0, 1,    0, 2, 1,    3, 2, 1} (spaces added to show the 3 groups).
squareUp(3) → [0, 0, 1, 0, 2, 1, 3, 2, 1]
squareUp(2) → [0, 1, 2, 1]
squareUp(4) → [0, 0, 0, 1, 0, 0, 2, 1, 0, 3, 2, 1, 4, 3, 2, 1]
*/
public int[] squareUp(int n) {
  int[] nums = new int[(n*n)];

  int counter = 0;
  for(int i = 0; i < n;i++){
    for(int k = 0; k<n-(i+1);k++){
      nums[counter]=0;
      counter++;;
    }
    for(int j = i+1; j >0;j-=1){
      nums[counter]=n-(n-j);
      counter++;
    }
   
    }
    return nums;
  }

