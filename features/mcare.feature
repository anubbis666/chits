Feature: maternal care

In order to efficiently render maternal care service 
As a healthcare worker
I want to be able to manage visits that involve maternal service  
   
@reset_consult
Scenario: First Visit
  Given I am logged in as "user" with password "user"
  When I search patient
  And I check by value "MATERNAL"
  And I press "Save Details"
  And I click "Maternal Care"
  When I fill in "lmp_date" with "1/31/2009"
  And I fill in "obscore_gp" with "10"
  And I fill in "obscore_fpal" with "0000"
  And I fill in "patient_height" with "165"
  And I select "Type O" from "bloodtype"
  And I check "risk[]"
  And I press "Save Data"
  Then I should see "MATERNAL REGISTRY RECORDS"

@reset_consult
Scenario: Prenatal1
  Given I am logged in as "user" with password "user"
  When I search patient
  And I check by value "MATERNAL"
  And I press "Save Details"
  And I click "Maternal Care"		
  And I click "PRENATAL"
  And I fill in "visit_date" with "4/9/2009"
  And I fill in "patient_systolic" with "120"
  And I fill in "patient_diastolic" with "80"
  And I fill in "patient_weight" with "65"
  And I fill in "fundic_height" with "5"
  And I fill in "fhr" with "15"
  And I select "LLQ" from "fhr_location"
  And I select "Cephalic" from "presentation"
  And I press "Save Prenatal Data"
  Then I should see "TRIMESTER 1"
  

Scenario: Prenatal2
  Given I am logged in as "user" with password "user"
  When I search patient
  And I check by value "MATERNAL"
  And I press "Save Details"
  And I click "Maternal Care"		
  And I click "PRENATAL"
  And I fill in "visit_date" with "8/6/2009"
  And I fill in "patient_systolic" with "120"
  And I fill in "patient_diastolic" with "80"
  And I fill in "patient_weight" with "95"
  And I fill in "fundic_height" with "15"
  And I fill in "fhr" with "25"
  And I select "LLQ" from "fhr_location"
  And I select "Cephalic" from "presentation"
  And I press "Save Prenatal Data"
  Then I should see "TRIMESTER 2"
  

Scenario: Prenatal3
  Given I am logged in as "user" with password "user"
  When I search patient
  And I check by value "MATERNAL"
  And I press "Save Details"
  And I click "Maternal Care"		
  And I click "PRENATAL"
  And I fill in "visit_date" with "10/9/2009"
  And I fill in "patient_systolic" with "120"
  And I fill in "patient_diastolic" with "80"
  And I fill in "patient_weight" with "120"
  And I fill in "fundic_height" with "25"
  And I fill in "fhr" with "35"
  And I select "LLQ" from "fhr_location"
  And I select "Cephalic" from "presentation"
  And I press "Save Prenatal Data"
  Then I should see "TRIMESTER 3"

@reset_consult
Scenario: Postpartum
  Given I am logged in as "user" with password "user"
  When I search patient
  And I check by value "MATERNAL"
  And I press "Save Details"
  And I click "Maternal Care"	
  And I click "POSTPARTUM"
  And I fill in "delivery_date" with "12/17/2009"
  And I fill in "obscore_gp" with "0001"
  And I fill in "obscore_fpal" with "1001"
  And I select "Health Center" from "delivery_location"
  And I select "Midwife" from "attendant"
  And I select "Live baby boy LSCS" from "outcome"
  And I fill in "birth_weight" with "5"
  And I check "breastfeeding_flag"
  And I fill in "date_breastfed" with "12/17/2009"
  And I check "healthy_baby_flag"
  And I press "Save Postpartum Data"
  Then I should see "LSCS"

@reset_consult
Scenario: Post Visit
  Given I am logged in as "user" with password "user"
  When I search patient
  And I check by value "MATERNAL"
  And I press "Save Details"
  And I click "Maternal Care"	
  And I click "POSTPARTUM"
  And I fill in "visit_date" with "1/5/2010"
  And I select "Clinic Visit" from "visit_type"
  And I fill in "patient_systolic" with "120"
  And I fill in "patient_diastolic" with "80"
  And I check "cord_ok_flag"
  And I check "breastfeeding_flag"
  And I press "Save Postpartum Visit"
  Then I should see "WEEK 3"

@reset_consult
Scenario: Services
  Given I am logged in as "user" with password "user"
  When I search patient
  And I check by value "MATERNAL"
  And I press "Save Details"
  And I click "Maternal Care"	
  And I click "SERVICES"
  And I click "visit_type"
  And I check by value "DENT"
  And I check by value "IRON"
  And I check by value "VITA"  
  And I check by value "TT1" 
  And I press "Update Services"
  Then I should see "TT1"

@reset_consult
Scenario: End Consult
  Given I am logged in as "user" with password "user"
  When I search patient
  And I click "CONSULT"
  And I press "End Consult"
  And I press "Yes"
  Then I should not see "Makiling, Maria"

