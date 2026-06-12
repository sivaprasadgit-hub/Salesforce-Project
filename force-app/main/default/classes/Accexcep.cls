public class Accexcep {
    public static void mainprocess(){
        try{
        insertAccount();
        }catch(MyException me){
            System.debug('The Error message: '+me.getMessage());
            System.debug('Cause: '+me.getMessage());
            System.debug('LineNumber: '+me.getLineNumber());
        }
    }
    public static void insertAccount(){
        try{
            Account a = new Account();
            insert a;
        }
        catch(DMLException de){
            throw new MyException('Account cannot be created because the required field name is missing',de);
        }
    }

}