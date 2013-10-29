__END__
#This file is deprecated until an automation environment with a 
#Production synced DB is available
$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNavBarPageElement < NavBarVariables

#Test 1: Validate Health Directory Entries
	def test01_00_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		
		assert $browser.text.include? "Nursing Services"
	end
##
	def test01_01_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_nursing.click
		
		assert $browser.text.include? "Nursing Services"
	end
##
	def test01_02_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_testing.click
		
		assert $browser.text.include? "Testing & Diagnostics"
	end
##
	def test01_03_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_clinics.click
		
		assert $browser.text.include? "Clinics"
	end
##
	def test01_04_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_medical.click
		
		assert $browser.text.include? "Medical Professionals"
	end
##
	def test01_05_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_optometrists.click
		
		assert $browser.text.include? "Optometrists" 
	end
##		
	def test01_06_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_drug_stores.click
		
		assert $browser.text.include? "Drug Stores & Pharmacies"
	end

##	
	def test01_07_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_mental_health.click
		
		assert $browser.text.include? "Mental Health"
	end
##
	def test01_08_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click	
		$directory_health_services.click
		
		assert $browser.text.include? "Health Services"
	end
##	
	def test01_09_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_nutritionists.click
		
		assert $browser.text.include? "Nutritionists"
	end
##	
	def test01_10_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_hospitals.click
		
		assert $browser.text.include? "Hospitals"
	end
##
	def test01_11_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_chiropractors.click
		
		assert $browser.text.include? "Chiropractors"
	end
##
	def test01_12_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click			
		$directory_alternative.click
		
		assert $browser.text.include? "Alternative Medicine"
	end
##	
	def test01_13_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_ambulance.click
		
		assert $browser.text.include? "Ambulance"
	end
##	
	def test01_14_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_dentists.click
		
		assert $browser.text.include? "Dentists"
	end
##	
	def test01_15_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_assisted.click
		
		assert $browser.text.include? "Assisted Living"
	end
##	
	def test01_16_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_doctors.click
		
		assert $browser.text.include? "Doctors & Group Practices"
	end
##	
	def test01_17_health
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_health.click
		$directory_physical.click

		assert $browser.text.include? "Physical & Occupational Therapists"
	end

#Test 2: Validate Beauty & Spas Directory Entries
	def test02_01_beauty_spas
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		
		assert $browser.text.include? "Tattoos & Piercing"
	end
##
	def test02_02_beauty_spas
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		$directory_tattoos.click
		
		assert $browser.text.include? "Tattoos & Piercing"
	end
##
	def test02_03_beauty_spas
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		$directory_tanning.click
		
		assert $browser.text.include? "Tanning"
	end
##		
	def test02_04_beauty_spas
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		$directory_massage.click
		
		assert $browser.text.include? "Massage"
	end
##
	def test02_05_beauty_spas
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		$directory_hair.click
		
		assert $browser.text.include? "Hair Salons & Barbers"
	end
##
	def test02_06_beauty_spas
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		$directory_nail.click
		
		assert $browser.text.include? "Nail Salons"
	end
##
	def test02_07_beauty_spas
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_beauty.click
		$directory_spas.click
		
		assert $browser.text.include? "Spas"
	end
		
#Test 3: Validate Home Services & Repairs Directory Entries
	def test03_01_home_services
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		
		assert $browser.text.include? "Home Services & Repairs"
	end
##
	def test03_02_home_services
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		$directory_architects.click
		
		assert $browser.text.include? "Architects"
	end	
##
	def test03_03_home_services
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		$directory_locksmiths.click
		
		assert $browser.text.include? "Locksmiths & Home Security"
	end
##
	def test03_04_home_services
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		$directory_contractors.click
		
		assert $browser.text.include? "General Contractors"
	end
##
	def test03_05_home_services
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		$directory_pest_control.click
		
		assert $browser.text.include? "Pest Control"
	end
##
	def test03_06_home_services
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		$directory_gardening.click
		
		assert $browser.text.include? "Lawn & Gardening"
	end
##
	def test03_07_home_services
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_home_services.click
		$directory_cleaning.click
		
		assert $browser.text.include? "Cleaning Services"
	end

#Test 4: Validate Services Directory Entries
	def test04_01_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click
		
		assert $browser.text.include? "Utilities"
	end
##		
	def test04_02_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click
		$directory_utilities.click
		
		assert $browser.text.include? "Utilities"
	end
##		
	def test04_03_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click
		$directory_printing.click
		
		assert $browser.text.include? "Printing & Copying"
	end
##	
	def test04_04_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click	
		$directory_employment.click
		
		assert $browser.text.include? "Employment"
	end
##
	def test04_05_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_tailors.click
		
		assert $browser.text.include? "Tailors"
	end
##	
	def test04_06_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click	
		$directory_business.click
		
		assert $browser.text.include? "Business to Business"
	end
##
	def test04_07_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_child_care.click
		
		assert $browser.text.include? "Child Care"
	end
##
	def test04_08_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_funeral.click
		
		assert $browser.text.include? "Funeral Services"
	end
##
	def test04_09_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_laundry.click
		
		assert $browser.text.include? "Dry Cleaning & Laundry"
	end
##
	def test04_10_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_storage.click
		
		assert $browser.text.include? "Moving & Storage"
	end
##
	def test04_11_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_pet_services.click
		
		assert $browser.text.include? "Pet Services"
	end
##
	def test04_12_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_mail.click
		
		assert $browser.text.include? "Mail & Shipping"
	end
##
	def test04_13_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click
		$directory_electronic.click
		
		assert $browser.text.include? "Photo & Electronic Services"
	end
##
	def test04_14_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click		
		$directory_parking.click
		
		assert $browser.text.include? "Parking Lots & Garages"
	end
##
	def test04_15_services_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_services.click
		$directory_party_services.click
		
		assert $browser.text.include? "Party & Event Services"
	end

#Test 5: Validate Financial & Legal Services Directory Entries
	def test05_01_financial_legal
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		
		assert $browser.text.include? "Banking"
	end
##		
	def test05_02_financial_legal
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		$directory_banking.click
		
		assert $browser.text.include? "Banking"
	end
##
	def test05_03_financial_legal
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		$directory_accounting.click
		
		assert $browser.text.include? "Accounting & Financial Planners"	
	end		
##		
	def test04_04_financial_legal
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		$directory_notaries.click
		
		assert $browser.text.include? "Notaries"
	end	
##		
	def test05_05_financial_legal
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		$directory_attorneys.click
		
		assert $browser.text.include? "Attorneys"	
	end	
##		
	def test05_06_financial_legal
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		$directory_attorneys.click
		
		assert $browser.text.include? "Attorneys"	
	end	
##		
	def test05_07_financial_legal
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##		
		$directory_financial.click
		$directory_insurance.click
		
		assert $browser.text.include? "Insurance"
	end
end
