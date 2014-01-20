import java.util.*;
public class VerizonWEPDecoder {
    public static void main(String[] args)
    {
        Scanner kb=new Scanner(System.in);
        String hex;
        while(true)
        {
            System.out.println("Please enter a SSID");
            String ssid=kb.nextLine();
            while(ssid.length()!=5)
            {
                System.out.println("Please enter a correct SSID");
                ssid=kb.nextLine();
            }
            decode(ssid.toCharArray());
            hex = Long.toHexString(decode(ssid.toCharArray()));
            hex=hex.toUpperCase();
            System.out.println("Possible Key - 1801"+hex);
            System.out.println("Possible Key - 1F90"+hex);
        }
    }
    private static long decode(char[] c)
    {
        long sum=0;
        for(int i=0;i<c.length;i++)
        {
            sum+=(Long.parseLong(Character.toString(c[i]),36)*Math.pow(36, i));
        }
        return sum;
    }
}
