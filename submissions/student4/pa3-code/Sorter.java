import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;

class Sorter {
  public static void main(String[] args) {
    ArrayList<Integer> nums = new ArrayList<>();
    Scanner in = new Scanner(System.in);

    String s = in.nextLine();

    for(String num: s.split(" ")) {
      nums.add(Integer.parseInt(num));
    }
    Collections.sort(nums);
    for(Integer i: nums) {
      System.out.print(i + " ");
    }
    System.out.println();
  }
}
