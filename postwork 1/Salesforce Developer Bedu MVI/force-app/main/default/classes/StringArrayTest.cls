public class StringArrayTest {
    public static List<string> generateStringArray(Integer numStr){
        List<String> newList = new List<String>();
        for (Integer i=0; i<numStr; i++) {
            newList.add('Test '+i);
            System.debug(newList[i]);
        }
        return newList;  
    }
}