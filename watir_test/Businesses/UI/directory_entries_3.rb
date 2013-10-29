__END__
#This file is deprecated until an automation environment with a 
#Production synced DB is available
$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNavBarPageElement < NavBarVariables

#Test 1: Validate Financial Services Directory Entries
	def test01_01_financial_services
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_financial.when_present.click
		
		assert $browser.text.include? "Financial Services"
	end
		
#Test 2: Validate Real Estate Directory Entries
	def test02_01_real_estate
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_real_estate.when_present.click
		
		assert $browser.text.include? "Appraiser"
	end		
##
	def test02_02_real_estate
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_real_estate.when_present.click
		$directory_appraiser.when_present.click
		
		assert $browser.text.include? "Appraiser"
	end		
##
	def test02_03_real_estate
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_real_estate.when_present.click
		$directory_retirement.when_present.click
		
		assert $browser.text.include? "Retirement Communities"
	end	
		
#Test 3: Validate Hometown Partners Directory Entries
	def test03_01_hometown_partners
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_hometown.when_present.click
		
		assert $browser.text.include? "Hometown Partners"
	end
		
#Test 4: Validate Schools Directory Entries
	def test04_01_schools_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		
		assert $browser.text.include? "Vocational Schools"
	end		
##
	def test04_02_schools_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_vocational.when_present.click
		
		assert $browser.text.include? "Vocational Schools"
	end		
##
	def test04_03_schools_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_vocational.when_present.click
		
		assert $browser.text.include? "Junior High Schools"
	end		
##
 	def test04_04_schools_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_specialty.when_present.click
		
		assert $browser.text.include? "Specialty Schools"
	end		
##
	def test04_05_schools_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_tutoring.when_present.click
		
		assert $browser.text.include? "Tutoring & Private Lessons"
	end		
##
	def test04_06_schools_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_pre_schools.when_present.click
		
		assert $browser.text.include? "Pre-Schools"
	end		
##
	def test04_07_schools_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_high_schools.when_present.click
		
		assert $browser.text.include? "High Schools"
	end		
##
	def test04_08_schools_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_schools.when_present.click
		$directory_elementary_schools.when_present.click
		
		assert $browser.text.include? "Elementary Schools"
	end

#Test 5: Validate Shopping Directory Entries
	def test05_01_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		
		assert $browser.text.include? "Home Furnishings"
	end		
##
  	def test05_02_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_home_furnishings.when_present.click
		
		assert $browser.text.include? "Home Furnishings"
	end		
##
	def test05_03_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_music_video.when_present.click
		
		assert $browser.text.include? "Music & Video"
	end		
##
	def test05_04_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_nurseries.when_present.click
		
		assert $browser.text.include? "Nurseries & Gardening"
	end		
##
	def test05_05_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_toys_games.when_present.click
		
		assert $browser.text.include? "Toys & Games"
	end		
##
	def test05_06_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_hobbies.when_present.click
		
		assert $browser.text.include? "Hobbies & Crafts"
	end		
##
	def test05_07_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_office_supplies.when_present.click
		
		assert $browser.text.include? "Office Supplies"
	end		
##
	def test05_08_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_office_supplies.when_present.click
		
		assert $browser.text.include? "Office Supplies"
	end		
##
 	def test05_09_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_sporting_goods.when_present.click
		
		assert $browser.text.include? "Sporting Goods & Recreation"
	end		
##
	def test05_10_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_antiques.when_present.click
		
		assert $browser.text.include? "Antiques & Collectibles"
	end		
##
	def test05_11_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_home_garden.when_present.click
		
		assert $browser.text.include? "Home & Garden"
	end		
##
	def test05_12_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_consignment.when_present.click
		
		assert $browser.text.include? "Consignment & Thrift Stores"
	end		
##
	def test05_13_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_web_retailers.when_present.click
		
		assert $browser.text.include? "Web Retailers"
	end		
##
	def test05_14_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_computers.when_present.click
		
		assert $browser.text.include? "Computers & Electronics"
	end		
##
	def test05_15_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_books.when_present.click
		
		assert $browser.text.include? "Books & Magazines"
	end		
##
	def test05_16_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_pet_shops.when_present.click
		
		assert $browser.text.include? "Pet Shops"
	end		
##
	def test05_17_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_shoes.when_present.click
		
		assert $browser.text.include? "Shoes"
	end		
##
	def test05_18_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_jewelry.when_present.click
		
		assert $browser.text.include? "Jewelry & Watches"
	end		
##
	def test05_19_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_jewelry.when_present.click
		
		assert $browser.text.include? "Jewelry & Watches"
	end		
##
	def test05_20_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_framing.when_present.click
		
		assert $browser.text.include? "Framing Stores"
	end		
##
	def test05_21_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_shopping_centers.when_present.click
		
		assert $browser.text.include? "Shopping Centers"
	end		
##
	def test05_22_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_luggage.when_present.click
		
		assert $browser.text.include? "Luggage"
	end		
##
	def test05_23_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_luggage.when_present.click
		
		assert $browser.text.include? "Luggage"
	end		
##
	def test05_24_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_eyewear.when_present.click
		
		assert $browser.text.include? "Eyewear & Opticians"
	end		
##
	def test05_25_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_appliances.when_present.click
		
		assert $browser.text.include? "Appliances"
	end		
##
	def test05_26_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_gifts.when_present.click
		
		assert $browser.text.include? "Gifts & Stationery"
	end		
##
	def test05_27_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_beauty.when_present.click
		
		assert $browser.text.include? "Beauty Products"
	end		
##
	def test05_28_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_clothing.when_present.click
		
		assert $browser.text.include? "Clothing & Accessories"
	end		
##
	def test05_29_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_florists.when_present.click
		
		assert $browser.text.include? "Florists"
	end		
##
	def test05_30_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_baby_products.when_present.click
		
		assert $browser.text.include? "Baby Products"
	end		
##
	def test05_31_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_cell_phones.when_present.click
		
		assert $browser.text.include? "Cell Phones & Wireless"
	end		
##
	def test05_32_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_hardware.when_present.click
		
		assert $browser.text.include? "Hardware & Paint"
	end		
##
	def test05_33_shopping_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_shopping.when_present.click
		$directory_kitchen.when_present.click
		
		assert $browser.text.include? "Kitchen & Bath"
	end
end