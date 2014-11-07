module AppointmentsTest
  module Interactions
    class ModifyPracticeProviderWeeklyTimeSlot
      # include Interaction
      
      #---Test Scenario:  Recurring (weekly) Time Slot Management---#      
      def open
        #Workaround: Need to modify portion of URL after doctors/ to match desired provider
        client.visit('http://brewerpractice.hlthpst.dev/admin/doctors/79-dr-johnny-bravo1-xl')
      end
      
      def !
        #initial set up
        client.click_link('Recurring (weekly) Time')
        my_element = client.find(:css, 'div#current_time_slot_settings')
          do_nothing_until_element_visible(my_element)
        #workaround: Need to modify doc ID for new doctor
        
        #within ("//li[@id='doctor_79_work_day_monday']") do
        #   select('Closed', :from => 'work_day_opens_at')
        #   select('Closed', :from => 'work_day_closes_at')
        #   click_button('update hours')
        #end
        #--Test Case: Work Days - Workdays modification--#
        client.find(:css, '#doctor_79_work_day_monday').select('Closed', :from => 'work_day_opens_at')
        client.find(:css, '#doctor_79_work_day_monday').select('Closed', :from => 'work_day_closes_at')
        client.find(:css, '#doctor_79_work_day_monday').click_button('update hours')
        #--Test Case: Work Days - Add workday recurring block--#
        client.find(:css, '#doctor_79_work_day_friday').click_link('new block')
        client.find(:css, '#doctor_79_work_day_friday').fill_in('schedule_block_reason', :with => 'Surgery')
        client.find(:css, '#doctor_79_work_day_friday').select('10 AM', :from => 'schedule_block_starts_at_4i')
        client.find(:css, '#doctor_79_work_day_friday').select('00', :from => 'schedule_block_starts_at_5i')
        client.find(:css, '#doctor_79_work_day_friday').select('01 PM', :from => 'schedule_block_ends_at_4i')
        client.find(:css, '#doctor_79_work_day_friday').select('30', :from => 'schedule_block_ends_at_5i')
        client.find(:css, '#doctor_79_new_schedule_block_for_work_day_for_friday').click_button('add block')
        #--Test Case: Work Days - Modify workday hours--#
        client.find(:css, 'li#doctor_79_work_day_wednesday').select('10:00 AM', :from => 'work_day_opens_at')
        client.find(:css, 'li#doctor_79_work_day_wednesday').select('02:00 PM', :from => 'work_day_closes_at')
        client.find(:css, '#doctor_79_work_day_wednesday').click_button('update hours')
        #--Test Case: Time Related Provider Settings - Modify time slots generation mode--#
        client.find(:css, '#time_slot_generation_mode > span.edit_button > a.link > img[alt="File_edit"]').click
        client.find(:css, '#time_slot_generation_mode').select('standard', :from => 'doctor_time_slot_generation_mode')
        client.find(:css, '#time_slot_generation_mode').click_button('save changes')
        #--Test Case: Time Related Provider Settigns - Modify time slots duration--# 
        client.find(:css, '#minutes_for_slot > span.edit_button > a.link > img[alt="File_edit"]').click
        client.find(:css, '#minutes_for_slot').select('30', :from => 'doctor_minutes_for_slot')
        client.find(:css, '#minutes_for_slot').click_button('save changes')
        #--Test Case: Time Related Provider Settings - Modify number of weeks to generate schedule--#
        client.find(:css, '#number_of_weeks_out_to_generate > span.edit_button > a.link > img[alt="File_edit"]').click
        client.find(:css, '#number_of_weeks_out_to_generate').select('7', :from => 'doctor_number_of_weeks_out_to_generate')
        client.find(:css, '#number_of_weeks_out_to_generate').click_button('save changes')
        #--Test Case: Time Related Provider Settings - Modify end of day overflow --#
        client.find(:css, '#end_of_day_overflow_in_minutes > span.edit_button > a.link > img[alt="File_edit"]').click
        client.find(:css, '#end_of_day_overflow_in_minutes').select('15', :from => 'doctor_end_of_day_overflow_in_minutes')
        client.find(:css, '#end_of_day_overflow_in_minutes').click_button('save changes')
        #--Test Case: Time Related Provider Settings - Modify number of days out for booking appointment--#
        client.find(:css, '#number_of_work_days_out_for_booking > span.edit_button > a.link > img[alt="File_edit"]').click
        client.find(:css, '#number_of_work_days_out_for_booking').select('1', :from => 'doctor_number_of_work_days_out_for_booking')
        client.find(:css, '#number_of_work_days_out_for_booking').click_button('save changes')
        #--Test Case: Time Related Provider Settings - Set provider's custom scheduling message--#
        client.find(:css, '#message_about_scheduling > span.edit_button > a.link > img[alt="File_edit"]').click
        client.find(:css, '#message_about_scheduling').fill_in('doctor_message_about_scheduling', :with => 'There is a $100 cancellation fee if cancel within 24 hours of appointment')
        client.find(:css, '#message_about_scheduling').click_button('save changes')
        #--Test Case: Current Eligible Recurring Time Slot Settings - Generate provider's time slots--#
        client.click_button('Select Recurring Time Slots')
        client.click_link('Select All')
        client.click_button('Save')
        #Debugging statement
        #save_myscreenshot
      end      
      
      def do_nothing_until_element_visible (the_element)
        begin
        #do nothing until element is visible
        end until the_element.visible?
        ##for debugging uncomment the following line
        #save_myscreenshot
        the_element.visible?  
      end
      
      def save_myscreenshot
        time = Time.now.strftime "%FT%T.%L%:z"
        client.save_screenshot("capy-test-#{time}.png")
      end 
      
      def modified_practice_provider_weekly_time_slot?
        #client.has_content?('Reason for Visits has not been setup.')
        #client.asset_selector (
        #client.find(:css, 'div#gender > span.display > :text => "Female" ')
        client.should_not eql('Time Slots need to be selected for this provider.')
        #true
        #sed -i 's/\(videoId: \).*/\1 \x27'${id}'\x27/
        #s/\(var vid_seq= \).*/\1'${id_seq}'\;/' file
        #sed 's/79/78/g' #all instances g
      end
    end
  end
end
