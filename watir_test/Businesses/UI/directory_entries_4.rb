__END__
#This file is deprecated until an automation environment with a 
#Production synced DB is available
$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNavBarPageElement < NavBarVariables

#Test 1: Validate Readers' Choice Directory Entries
	def test01_01_readers_choice
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_rc.when_present.click

		assert $browser.text.include? "Readers' Choice 2012 Nominee"
	end	

	def test01_02_readers_choice
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_rc.when_present.click
		$directory_rc_2012_nominee.when_present.click
		
		assert $browser.text.include? "Readers' Choice 2012 Nominee"
	end	
	def test01_03_readers_choice
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_rc.when_present.click
		$directory_rc_2012_winner.when_present.click
		
		assert $browser.text.include? "Readers' Choice 2012 Winner"
	end	
	
#Test 2: Validate Community Resources Directory Entries
	def test02_01_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_community.when_present.click

		assert $browser.text.include? "Chambers & Business Associations"
	end	
	def test02_02_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_community.when_present.click
		$directory_chambers.when_present.click

		assert $browser.text.include? "Chambers & Business Associations"
	end	

	def test02_03_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_community.when_present.click
		$directory_camps.when_present.click

		assert $browser.text.include? "Camps"
	end	
	def test02_04_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_community.when_present.click
		$directory_local_media.when_present.click

		assert $browser.text.include? "Local Media"
	end	
	
	def test02_05_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
		$directory_community.when_present.click
		$directory_cemeteries.when_present.click

		assert $browser.text.include? "Cemeteries"
	end	

	def test02_06_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_community.when_present.click
		$directory_libraries.when_present.click

		assert $browser.text.include? "Libraries"
	end	

	def test02_07_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_community.when_present.click
		$directory_associations.when_present.click

		assert $browser.text.include? "Associations"
	end	

	def test02_08_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_community.when_present.click
		$directory_charitable.when_present.click

		assert $browser.text.include? "Charitable & Civic Organizations"
	end	

	def test02_09_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_community.when_present.click
		$directory_parks.when_present.click

		assert $browser.text.include? "Parks & Gardens"
	end	

	def test02_10_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_community.when_present.click
		$directory_religious.when_present.click

		assert $browser.text.include? "Religious Institutions"
	end	

	def test02_11_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_community.when_present.click
		$directory_community.when_present.click

		assert $browser.text.include? "Community Centers"
	end	

	def test02_12_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_community.when_present.click
		$directory_playgrounds.when_present.click

		assert $browser.text.include? "Playgrounds"
	end	

	def test02_13_community_resources
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_community.when_present.click
		$directory_beaches.when_present.click

		assert $browser.text.include? "Beaches"
	end

#Test 3: Validate Seasonal Businesses Directory Entries
	def test03_01_seasonal_business_TC_242318
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_seasonal.when_present.click

		assert $browser.text.include? "Seasonal Businesses"
	end
	
#Test 4: Validate Food & Beverage Shops Directory Entries
	def test04_01_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
	
		$directory_food.when_present.click

		assert $browser.text.include? "Health Food Stores"
	end	

	def test04_02_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_health_food.when_present.click
	
		assert $browser.text.include? "Health Food Stores"
	end	

	def test04_03_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_cheese.when_present.click
		
		assert $browser.text.include? "Cheese Shops"
	end	

	def test04_04_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_butchers.when_present.click
		
		assert $browser.text.include? "Butchers"
	end	

	def test04_05_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_butchers.when_present.click
		
		assert $browser.text.include? "Bakeries"
	end	

	def test04_06_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_farmers_markets.when_present.click
		
		assert $browser.text.include? "Farmers Markets"
	end	

	def test04_07_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_fish.when_present.click
		
		assert $browser.text.include? "Fish & Seafood Shops"
	end	

	def test04_08_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_ice_cream.when_present.click
		
		assert $browser.text.include? "Ice Cream & Candy Stores"
	end	

	def test04_09_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_juice.when_present.click
		
		assert $browser.text.include? "Juice & Smoothie Bars"
	end	

	def test04_10_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_specialty.when_present.click
		
		assert $browser.text.include? "Specialty Foods"
	end	

	def test04_11_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_wineries.when_present.click
		
		assert $browser.text.include? "Wineries"
	end	

	def test04_12_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_deli.when_present.click
		
		assert $browser.text.include? "Deli & Convenience Stores"
	end	

	def test04_13_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_grocery.when_present.click
		
		assert $browser.text.include? "Grocery Stores"
	end	

	def test04_14_food_beverage_shops
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_food.when_present.click
		$directory_beer_wine.when_present.click
		
		assert $browser.text.include? "Beer Wine & Liquor"
	end

#Test 5: Validate Restaurants & Bars Directory Entries
	def test05_01_restaurants_bars_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_restaurant_bars.when_present.click
		
		assert $browser.text.include? "Coffee and Tea Shops"
	end	

	def test05_02_restaurants_bars_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_restaurant_bars.when_present.click
		$directory_coffee_tea.when_present.click
		
		assert $browser.text.include? "Coffee and Tea Shops"
	end	

	def test05_03_restaurants_bars_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_restaurant_bars.when_present.click
		$directory_bars_pubs.when_present.click
		
		assert $browser.text.include? "Bars & Pubs"
	end	

	def test05_04_restaurants_bars_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_restaurant_bars.when_present.click
		$directory_restaurants.when_present.click
		
		assert $browser.text.include? "Restaurants"
	end	

	def test05_05_restaurants_bars_directory
		login $user_1_email, $master_password
		$browser.goto($patch_directory)

		$directory_restaurant_bars.when_present.click
		$directory_catering.when_present.click
		
		assert $browser.text.include? "Catering"	
	end
end