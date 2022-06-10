/**Creado por Mariana Vives */
public with sharing class AccBatchScheduleClass implements Schedulable {
    global void execute(SchedulableContext ctx){
        AccBatchApex accCls = new AccBatchApex();

        String cronStr = '20 30 8 10 2 ?';
        String jobID= System.schedule('Process Acc Records', cronStr, accCls);
    }
}
