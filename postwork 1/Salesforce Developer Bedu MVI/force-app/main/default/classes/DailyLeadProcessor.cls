global class DailyLeadProcessor implements Schedulable {

    global void execute(SchedulableContext ctx) {
        List<Lead> leads = [Select Id, LeadSource from Lead where LeadSource = null LIMIT 200];
      			for(Lead l: leads) {
				l.LeadSource = 'Dreamforce';
			}
			update leads;
		}
    }