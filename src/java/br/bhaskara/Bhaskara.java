package br.bhaskara;

public class Bhaskara {
    public static int[] equationBhaskara(int a, int b, int c){
        int delta, x1, x2;
        int[] resul = new int[3];
        
        if (a == 0){
            resul[0] = -666;
            return resul;
        }
        
        delta = (b * b) + (-4 * (a * c));
 
        if (delta > 0) {
            x1 = (int) ((-(b) + Math.sqrt(delta)) / 2 * a);
            x2 = (int) ((-(b) - Math.sqrt(delta)) / 2 * a);
            
            resul[0] = delta;
            resul[1] = x1;
            resul[2] = x2;

        } else {
            resul[0] = delta;
            resul[1] = 0;
            resul[2] = 0;
        }
        
        return resul;
    }
}