module AppointmentsTest
  module Interactions
    class ModifyPracticeProviderProfile
      # include Interaction
      #---Test Scenario: Modify Practice Provider Profile---#
      def open
        #Workaround: Need to modify portion of URL after doctors/ to match desired provider
        client.visit('http://brewerpractice.hlthpst.dev/admin/doctors/79-dr-johnny-bravo1-xl')
      end
      
      def !
        #Workaround: need to add loop to allow edits to complete before moving to next edit 
        #--Test Case: Practice Provider Profile - Modify provider's email--#
        client.find(:css, '#email_address > span.edit_button > a.link > img[alt="File_edit"]').click
        client.fill_in('practice_user_email', :with => 'wes@brewerpractice.com')
        #client.click_button('save changes')
        client.find(:css, '#email_address').click_button('save changes')
        #--Test Case: Practice Provider Profile - Modify provider's gender--#     
        client.find(:css, '#gender > span.edit_button > a.link > img[alt="File_edit"]').click
        client.select('Male', :from => 'doctor_gender')
        #client.click_button('save changes')
        client.find(:css, '#gender').click_button('save changes')
        #my_element = client.find(:css, '#gender > span.edit_button > a.link > img[alt="File_edit"]')
        #do_nothing_until_element_visible(my_element)
        #--Test Case: Practice Provider Profile - Modify provider's minimum patient age--#
        client.find(:css, '#patient_age_minimum > span.edit_button > a.link > img[alt="File_edit"]').click
        client.select('18', :from => 'doctor_patient_age_minimum')
        #client.click_button('save changes')  
        client.find(:css, '#patient_age_minimum').click_button('save changes')  
        #my_element = client.find(:css, '#patient_age_minimum > span.edit_button > a.link > img[alt="File_edit"]')
        #do_nothing_until_element_visible(my_element)
        #--Test Case: Practice Provider Profile - Modify provider's maximum patient age--#
        client.find(:css, '#patient_age_maximum > span.edit_button > a.link > img[alt="File_edit"]').click
        client.select('99', :from => 'doctor_patient_age_maximum')
        #client.click_button('save changes')
        client.find(:css, '#patient_age_maximum').click_button('save changes')
        #my_element = client.find(:css, '#patient_age_maximum > span.edit_button > a.link > img[alt="File_edit"]')
        #do_nothing_until_element_visible(my_element)
        #--Test Case: Practice Provider Profile -- Modify provider's NPI identification--# 
        client.find(:css, '#npi_identifier > span.edit_button > a.link > img[alt="File_edit"]').click
        client.fill_in('doctor_npi_identifier', :with => 'npi12354')
        #client.click_button('save changes')  
        client.find(:css, 'npi_identifier').click_button('save changes')  
        #my_element = client.find(:css, '#npi_identifier > span.edit_button > a.link > img[alt="File_edit"]')
        #do_nothing_until_element_visible(my_element)
        #--Test Case: Practice Provider Profile -- Modify provider's medical school information--# 
        #client.click_button('save changes')  
        client.find(:css, '#medical_school > span.edit_button > a.link > img[alt="File_edit"]').click
        client.fill_in('medical_school_name', :with => 'Harvard Medical School')
        client.fill_in('medical_school_year', :with => '2011')
        client.find(:css, '#medical_school_name').click_button('save changes')
        #client.click_button('save changes')
        #my_element = client.find(:css, '#medical_school > span.edit_button > a.link > img[alt="File_edit"]')
        #do_nothing_until_element_visible(my_element)
        #--Test Case: Practice Provider Profile -- Modify provider's residency information--# 
        client.find(:css, '#residency > span.edit_button > a.link > img[alt="File_edit"]').click
        client.fill_in('residency_name', :with => 'John Hopkins University Medical Center')
        client.fill_in('residency_year', :with => '2012')
        client.find(:css, '#residency').click_button('save changes')  
        #client.click_button('save changes')  
        #my_element = client.find(:css, '#residency > span.edit_button > a.link > img[alt="File_edit"]')
        #do_nothing_until_element_visible(my_element)
        #--Test Case: Practice Provider Profile -- Modify provider's fellowship information--# 
        client.find(:css, '#fellowship > span.edit_button > a.link > img[alt="File_edit"]').click
        client.fill_in('fellowship_name', :with => 'St Davis')
        client.fill_in('fellowship_year', :with => '2014')
        client.find(:css, '#fellowship').click_button('save changes') 
        #client.click_button('save changes')  
        #my_element = client.find(:css, '#fellowship > span.edit_button > a.link > img[alt="File_edit"]')
        #do_nothing_until_element_visible(my_element)
        #--Test Case: Practice Provider Profile -- Add language to provider's profile--# 
        client.click_link('add language')
        client.select('French', :from => 'language_name')
        client.click_button('language') 
        my_element = client.find(:css, '#fellowship > span.edit_button > a.link > img[alt="File_edit"]')
        do_nothing_until_element_visible(my_element)
        client.find(:css, '#personal_statement > span.edit_button > a.link > img[alt="File_edit"]').click
        client.fill_in('personal_statement_summary', :with => 'Use not only drugs, but also natural herbs and redemies')
        client.click_button('save changes') 
        my_element = client.find(:css, '#personal_statement > span.edit_button > a.link > img[alt="File_edit"]')
        do_nothing_until_element_visible(my_element)
        client.find(:css, '#hca_employed_provider_info > span.edit_button > a.link > img[alt="File_edit"]').click
        client.select('Yes', :from => 'doctor_hca_employed_provider_info')
        client.click_button('save changes') 
        my_element = client.find(:css, '#hca_employed_provider_info > span.edit_button > a.link > img[alt="File_edit"]')
        do_nothing_until_element_visible(my_element)
        client.find(:css, '#hca_hg_program_info > span.edit_button > a.link > img[alt="File_edit"]').click
        client.select('Yes', :from => 'doctor_hca_hg_program_info')
        client.click_button('save changes') 
        my_element = client.find(:css, '#hca_hg_program_info > span.edit_button > a.link > img[alt="File_edit"]')
        do_nothing_until_element_visible(my_element)
        client.find(:css, '#doctor_name > span.edit_button > a.link > img[alt="File_edit"]').click
        client.fill_in('doctor_prefix', :with => 'DR')
        client.fill_in('doctor_first_name', :with => 'Wes')
        client.fill_in('doctor_last_name', :with => 'Gamble')
        client.fill_in('doctor_suffix', :with => 'XIV')
        client.click_button('save changes') 
        my_element = client.find(:css, '#doctor_name > span.edit_button > a.link > img[alt="File_edit"]')
        do_nothing_until_element_visible(my_element)
        client.find(:css, '#doctor_type > span.edit_button > a.link > img[alt="File_edit"]').click
        client.select('Hematologist', :from => 'doctor_doctor_type_id')
        client.click_button('save changes') 
        my_element = client.find(:css, '#doctor_type > span.edit_button > a.link > img[alt="File_edit"]')
        do_nothing_until_element_visible(my_element)
        client.click_link('add secondary provider type')
        client.select('Oncology', :from => 'secondary_provider_type_doctor_type_id')
        client.click_button('secondary provider type')  
        save_myscreenshot
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
      
      
      def modified_practice_provider_profile?
        #client.has_content?('Reason for Visits has not been setup.')
        #client.asset_selector (
        #client.find(:css, 'div#gender > span.display > :text => "Female" ')
        true
      end
    end
  end
end
