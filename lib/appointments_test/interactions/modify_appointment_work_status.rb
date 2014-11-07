module AppointmentsTest
  module Interactions
    class ModifyAppointmentWorkStatus
      # include Interaction
      #TODO: Log in
      def open
        #Workaround: Modify the number at end of URL to match desired appointment ID 
        client.visit('http://brewerpractice.hlthpst.dev/admin/appointments/19')
      end
      
      def !
        client.click_link('edit_work_status_button')
        client.select('In progress', :from => 'appointment_work_status')
        client.select('omar_brewerpractice', :from => 'appointment_assignee_id')
        client.fill_in('appointment_note', :with => 'awaiting insurance verification')
        client.click_link ('update_work_status_button')
      end
    
      def modified_appointment_work_status?
        #TODO: figure out how to query database or check work status by ID
        #client.has_content?('#work_status_transition_27')
        #within_fieldset('work_statuses') { find('IN PROGRESS')}
        #research suggest that need to upgrade to latest version of capybara for this to work
        #true
        client.assert_selector('li', :text => 'IN PROGRESS', :visible => true)
      end
    end
  end
end
