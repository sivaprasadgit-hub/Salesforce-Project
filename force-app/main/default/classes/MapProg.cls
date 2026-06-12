public class MapProg {
    public static void mymethod(){
    Map<Integer,String> m1 = new Map<Integer,String>();
    m1.put(1005,'Siva');
    m1.put(1234,'Prasad');
    m1.put(7484,'Murali');
    m1.put(9048,'Himanth');
    System.debug(m1);
    System.debug('Key Set: '+m1.keySet());
    System.debug('Value Set: '+m1.values());
    for(Integer i:m1.keySet()){
        System.debug('Index: '+i+'Key'+m1.get(i));
    }
}

}