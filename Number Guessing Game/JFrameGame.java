import javax.swing.JOptionPane;

class JFrameGame
{
    public static void main(String[] args) {
        
        int systemNUmber = (int) (Math.random() * 100 + 1);
        //System.out.println(systemNUmber);
        int count = 1;
        int playerValue = 1;
        int remaningAttempt = 4;

        while(systemNUmber != playerValue && count <= 5 && playerValue > 0)
        {
            String value = JOptionPane.showInputDialog(null, "Enter a number between 1 - 100", "GUESSING GAME", 3);
            playerValue = Integer.parseInt(value);
            JOptionPane.showMessageDialog(null, "" + JFG(systemNUmber, playerValue, count, remaningAttempt));
            count++;
            remaningAttempt--;
            
            if(count == 6)
            {
                JOptionPane.showMessageDialog(null, "" + "             answer: " + systemNUmber);
            }
        }
    }
    static String JFG(int systemNUmber, int playerValue, int count, int remaningAttempt)
    {
        if(playerValue == 0)
        {
            return "correct answer3: " + systemNUmber;
        }
        else if(playerValue < 0 || playerValue > 100)
        {
            return "Invalid entry\nAttempt: " + count + "\nRemaning attempt: " + remaningAttempt;
        }
        else if(playerValue < systemNUmber)
        {
            return "Your guess is very low\nAttempt: " + count + "\nRemaning attempt: " + remaningAttempt;
        }
        else if(playerValue > systemNUmber)
        {
        return "Your guess is very high\nAttempt: " + count + "\nReamning attempt: " + remaningAttempt;
        }
        else if(playerValue == systemNUmber)
        {
            return "Correct answer \nAttempt: " + count;
        }
        else
        {
            JOptionPane.showMessageDialog(null, "");
        }
        return "0";
    }
}

