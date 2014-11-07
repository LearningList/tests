module AppointmentsTest
  module Interactions
    class ModifyPracticeProviderInsurances
      # include Interaction
      def open
        #Workaround: Need to modify portion of URL after doctors/ to match desired provider
        client.visit('http://brewerpractice.hlthpst.dev/admin/doctors/79-dr-johnny-bravo1-xl')
      end
      
      def !
        #Workaround:
        client.click_link('insurances')
        my_element = client.find(:css, 'div#doctor_excluded_insurance_plans')
        do_nothing_until_element_visible(my_element)
        
        client.click_link('add excluded insurance plan')
        client.select('Aetna - Medicare PPO', :from => 'doctor_excluded_insurance_plan_practice_insurance_plan_id')
        client.click_button('excluded insurance plan')
    
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
      
      
      def modified_practice_provider_insurances?
        #client.has_content?('Reason for Visits has not been setup.')
        #client.asset_selector (
        #client.find(:css, 'div#gender > span.display > :text => "Female" ')
        true
      end
    end
  end
end
