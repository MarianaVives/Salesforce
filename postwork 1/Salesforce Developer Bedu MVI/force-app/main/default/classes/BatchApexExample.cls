public with sharing class BatchApexExample implements Database.Batchable<sObject>, 
Database.Stateful {
    public Integer contador =0;

    global Database.QueryLocator start(Database.BatchableContext context){
        String query= 'SELECT Id, Name FROM Account WHERE Name = "BEDU"';
        return Database.QueryLocator(query);
    
    }
    global void execute(Database.BatchableContext context, List<Account> accounts){
        List<Account> accToUpdate = new List<Account>();

        for(Account acc: accLst){
            acc.Name= 'Bedu';
            accToUpdate.add(acc);
            contador++;
        }
        update accToUpdate;
    }
    global void finish(){
        System.debug('Resultado contado: '+contador);
        BatchApexExample batch = new BatchApexExample();
        Database.execute(batch);
    }
}
