public with sharing class LightningCtrl {
    @AuraEnabled
    public static List<Contact> getContacts(){
       return [SELECT Name, Phone, Email FROM Contact limit 5];
    }
}
