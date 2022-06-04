public class ContactAndLeadSearch {
    public static List<List< SObject>> searchContactsAndLeads(String lastName){
        List<List< sobject>> contactLeadList = [FIND :lastName IN ALL FIELDS RETURNING Contact(Name), Lead(Name)];
    return contactLeadList;
    }
}