@isTest
public class LeadProcessorTest {
    
    @isTest
    private static void testBatchClass(){
        //Load test data
        List<lead> leads = new List<lead>();
        for (Integer i=0; i<200; i++){
            leads.add(new lead (LastName='Connock', Company='Salesforce'));
        }
        insert leads;
        //Perform the test
       	Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();
       
    }
}