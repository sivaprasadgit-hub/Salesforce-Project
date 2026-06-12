public class ListProg {
    public static void mymethod(){
        List<Integer> l1 = new List<Integer>();
        l1.add(100);
        l1.add(200);
        l1.add(300);
        l1.add(400);
        l1.add(500);
        l1.add(600);
        System.debug('List: '+l1);
        System.debug(l1.size());
        l1.remove(3);
        System.debug('New List: '+l1);
        System.debug(l1.size());
        List<Integer> revlist = new List<Integer>();
        for(Integer i=l1.size()-1;i>=0;i--){
           
            revlist.add(l1.get(i));
        }
        System.debug(revlist);
    }
    
    public static void mymethod2(){
        List<String> l2 = new List<String>();
        l2.add('siva');
        l2.add('prasad');
        l2.add('mangi');
        l2.add('murali');
        l2.add('himanth');
        l2.add('raj');
        l2.add('adarsh');
        System.debug('List: '+l2);
        l2.sort();
        System.debug('After sort:'+l2);
        System.debug(l2.size());
        l2.remove(2);
        System.debug('New List2: '+l2);
         System.debug(l2.size());
    }

}