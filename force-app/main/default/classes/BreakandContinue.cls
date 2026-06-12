public class BreakandContinue {
    public static void mymethod(){
        integer sum = 0;
        for(integer i=0;i<10;i++){
            	
            if(i==5){
                continue;
            }
            sum = sum+i;
            System.debug('i: '+i+'sum: '+sum);
        }
    }

}