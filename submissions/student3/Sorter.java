class Sorter {
  public static void main(String[] args) {
    ArrayList<Integer> a = new ArrayList<>();
    Scanner in = new Scanner(System.in);

    String s = in.nextLine();

    for(String num: s.split(" ")) {
      a.add(Integer.parseInt(num));
    }
    for(Integer i: a) {
      System.out.print(i + " ");
    }
    System.out.println();
  }
}
