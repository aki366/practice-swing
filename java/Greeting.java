package java;
public class Greeting {
    public static void main(String[] args) {
        if (args.length > 0) {
            System.out.println("arg = " + args[0]);
        } else {
            System.out.println("no args");
        }
    }
}
