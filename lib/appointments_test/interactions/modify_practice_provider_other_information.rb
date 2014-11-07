module AppointmentsTest
  module Interactions
    class ModifyPracticeProviderOtherInformation
      # include Interaction
      
      def open
        #Workaround: Need to modify portion of URL after doctors/ to match desired provider
        client.visit('http://brewerpractice.hlthpst.dev/admin/doctors/79-dr-johnny-bravo1-xl')
      end
      
      def !
        #Workaround:
        #client.find(:css, '#professional_memberships > a.link > img[alt="add professional membership"]').click 
        client.click_link('other information')
        my_element = client.find(:css, 'div#professional_memberships')
        do_nothing_until_element_visible(my_element)
        
        client.click_link('add board certification')
        client.select('Cardiac Electrophysiology', :from => 'board_certification_name')
        save_myscreenshot
        client.click_button('board certification')
    
    
        client.click_link('add professional membership')
        client.fill_in('professional_membership_name', :with => 'American Heart Assoction')
        client.click_button('professional membership')
        client.click_link('add press')
        client.fill_in('press_name', :with => 'The new of age of cardiac MRI')
        client.click_button('press')
        client.click_link('add award')
        client.fill_in('award_name', :with => 'Austin Cardiologist Of The Year, 2014')
        client.click_button('award')
        client.click_link('add research interest')
        client.fill_in('research_interest_name', :with => 'X-RAY Cardiac MRI Machines')
        client.click_button('research interest')
        client.click_link('add publication')
        client.fill_in('publication_name', :with => 'Cardiac MRI reloaded!')
        client.click_button('publication')
        client.click_link('add clinical interest')
        client.select('Cardiac MRI', :from => 'clinical_interest_name')
        client.click_button('clinical interest')
        #client.click_link('add board certification')
        #client.select('Cardiac Electrophysiology', :from => 'board_certification_name')
        #save_myscreenshot
        #client.click_button('board certification')
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
      
      
      def modified_practice_provider_other_information?
        #client.has_content?('Reason for Visits has not been setup.')
        #client.asset_selector (
        #client.find(:css, 'div#gender > span.display > :text => "Female" ')
        true
      end
    end
  end
end
