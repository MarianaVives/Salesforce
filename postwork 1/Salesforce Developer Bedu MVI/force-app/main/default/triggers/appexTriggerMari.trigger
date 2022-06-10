/**
 * Desarrollado por Mariana Vives
 * Este trigger se ejecuta cuando una cuenta xxxx 
 * Fecha: 07/06/22
 * Version: 1.0
 * **/

trigger appexTriggerMari on Account (before insert, before update, after update) {
    if(Trigger.isBefore && Trigger.isInsert){
System.debug('I am in AccountTrigger before insert context');
}
    
if(Trigger.isUpdate) {
    if(Trigger.isBefore){
        for (Account acc: Trigger.New){
        System.debug('New Name'+ acc.Name);
        System.debug('Old Name'+ Trigger.oldMap.get(acc.Id).Name);
    		}
		}
	}
}