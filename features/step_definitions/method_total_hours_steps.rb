Then("I should see the right value of total_hours") do
   expect(@activity.total_hours).to be == (@activity.total_hours_of_work)
end

#avendo una sola attività abbiamo verificato che il metodo total_hours
#ritornasse le stesse ore di lavoro dell'attività, cioè total_hours_of_work
#se avessimo creato più attività con FactoryBot avremmo dovuto confrontare
#il valore di total_hours con customer.activities.sum(:total_hours_of_work)
