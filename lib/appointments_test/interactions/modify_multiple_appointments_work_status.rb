module AppointmentsTest
  module Interactions
    class ModifyMultipleAppointmentsWorkStatus
      #TODO: Log in
      attr_reader :client
      #attr_reader :appointments_id
    
      def initialize(client)
        @client = client
      end
    
      def open
        #Workaround:
        #If use URL below then need to either select ID or click "set work statuses" button 
        #client.visit('http://brewerpractice.hlthpst.dev/admin/appointments')
        #If use URL below then only need to check desired appointment(s) checkbox(es)
        client.visit('http://brewerpractice.hlthpst.dev/admin/appointments?appointment_search[practice_location_id]=&appointment_search[doctor_id]=&appointment_search[after_starts_at]=&appointment_search[before_starts_at]=&appointment_search[search_term]=&appointment_search[work_status]=&work_status_transitions[assignee]=&set_work_statuses=true')
      end
      
      def !
        #Workaround: Ensure appointment ID select exists or modify selection number 
        #client.check('selected_appointments[7,13]')
        client.find(:css, "#selected_appointments_[value='13']").set(true)
        client.find(:css, "#selected_appointments_[value='7']").set(true)
        #client.find(:css, "#selected_appointments_[value='#{@appointment13.appointments_id}']").set(true)
        #client.check('selected_appointments_7')
        client.select('In progress', :from => 'work_status_select')
        client.select('omar_brewerpractice', :from => 'assignee_id')
        client.fill_in('note_', :with => 'awaiting insurance verification')
        client.click_button ('work_status_multi_update_button')
      end
    
      def modified_multiple_appointments_work_status?
        #TODO: figure out how to query database or check work status by ID
        #client.has_content?('')
        true
      end
    end
  end
end
