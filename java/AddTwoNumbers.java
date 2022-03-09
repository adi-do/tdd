public class AddTwoNumbers {

   public static void main(String[] args) {
      int num1 = 0, num2 = 0, sum;
      if (args.length > 0) {
         try {
            num1 = Integer.parseInt(args[0]);
            num2 = Integer.parseInt(args[1]);
         } catch (NumberFormatException e) {
            System.err.println("Arguments must be integers.");
            System.exit(1);
         }
      }
      sum = num1 + num2;
 
      System.out.println(sum);
   }
 }
 