__END__
#This file is deprecated until an automation environment with a 
#Production synced DB is available
$LOAD_PATH << './config/watir_lib'  
require 'watir/test'

class TestNavBarPageElement < NavBarVariables

#Test 1: Validate Government Directory Entries
	def test01_01_government
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_government.click
		
		assert $browser.text.include? "Post Offices"
	end
##
	def test01_02_government
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_government.click
		$directory_post_offices.click
		
		assert $browser.text.include? "Post Offices"
	end
##
	def test01_03_government
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_government.click
		$directory_police.click
		
		assert $browser.text.include? "Police"
	end
##
	def test01_04_government
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_government.click
		$directory_courts.click
		
		assert $browser.text.include? "Courts"
	end
##
	def test01_05_government
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_government.click
		$directory_fire.click
		
		assert $browser.text.include? "Fire"
	end		
##
	def test01_06_government
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_government.click
		$directory_government_offices.click
		
		assert $browser.text.include? "Government Offices"
	end
		
#Test 2: Validate Travel & Transportation Directory Entries
	def test02_01_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_transportation.click
		
		assert $browser.text.include? "Airports"
	end
##
	def test02_02_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_transportation.click
		$directory_airports.click
		
		assert $browser.text.include? "Airports"
	end
##
	def test02_03_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_transportation.click
		$directory_car_rental.click
		
		assert $browser.text.include? "Car Rental"
	end
##
	def test02_04_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_transportation.click
		$directory_ferry.click
		
		assert $browser.text.include? "Ferry & Water Travel"
	end
##
	def test02_05_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_transportation.click
		$directory_ferry.click
		
		assert $browser.text.include? "Ferry & Water Travel"
	end
##
	def test02_06_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_transportation.click
		$directory_hotels.click
		
		assert $browser.text.include? "Hotels & Lodging"
	end
##
	def test02_07_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_transportation.click
		$directory_taxis.click
		
		assert $browser.text.include? "Taxis & Limousines"
	end
##
	def test02_08_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_transportation.click
		$directory_travel.click
		
		assert $browser.text.include? "Travel Agencies"
	end
##
	def test02_09_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_transportation.click
		$directory_train.click
		
		assert $browser.text.include? "Train Stations"
	end
##
	def test02_09_bus_stations
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_transportation.click
		$directory_bus_stations.click
		
		assert $browser.text.include? "Bus Stations & Services"
	end
	
#Test 3: Validate Arts & Entertainment Directory Entries
	def test03_01_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		
		assert $browser.text.include? "Arts & Entertainment"
	end
##
	def test03_02_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_entertainment.click
		
		assert $browser.text.include? "Nightlife"
	end
##
	def test03_03_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_nightlife.click
		
		assert $browser.text.include? "Nightlife"
	end
##
	def test03_04_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_performing.click
		
		assert $browser.text.include? "Performing Arts"
	end
##
	def test03_05_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_karaoke.click
		
		assert $browser.text.include? "Karaoke"
	end
##
	def test03_06_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_nightclubs.click
		
		assert $browser.text.include? "Nightclubs"
	end
##
	def test03_07_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_astrologer.click
		
		assert $browser.text.include? "Astrologer"
	end
##
	def test03_08_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_pool_halls.click
		
		assert $browser.text.include? "Pool Halls"
	end
##
	def test03_09_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_art_galleries.click
		
		assert $browser.text.include? "Art Galleries"
	end
##
	def test03_10_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_art_galleries.click
		
		assert $browser.text.include? "Art Galleries"
	end
 ##
 	def test03_11_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_zoos.click
		
		assert $browser.text.include? "Zoos & Aquariums"
	end
 ##
  	def test03_12_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_amusement.click
		
		assert $browser.text.include? "Amusement Parks"
	end
##
 	def test03_13_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_arcades.click
		
		assert $browser.text.include? "Arcades & Games"
	end
##
 	def test03_14_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_movies.click
		
		assert $browser.text.include? "Movies"
	end
##
 	def test03_15_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_museums.click
		
		assert $browser.text.include? "Museums & Historic Sites"
	end
##
 	def test03_16_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_entertainment.click
		$directory_casinos.click
		
		assert $browser.text.include? "Casinos"
	end

#Test 4: Validate Automotive & Boating Directory Entries
	def test04_01_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		
		assert $browser.text.include? "Boat Repair & Service"
	end
##
	def test04_02_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_boat_repair.click

		assert $browser.text.include? "Boat Repair & Service"
	end
##
	def test04_03_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_towing.click
		
		assert $browser.text.include? "Towing"
	end
##
	def test04_04_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_boating_parts.click
		
		assert $browser.text.include? "Boating Parts & Accessories"
	end
##
	def test04_05_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_tires.click
		
		assert $browser.text.include? "Tires"
	end
##
	def test04_06_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_car_wash.click
		
		assert $browser.text.include? "Car Wash"
	end
##
	def test04_07_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_car_wash.click
		
		assert $browser.text.include? "Car Wash"
	end
##
	def test04_08_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_stereos.click
		
		assert $browser.text.include? "Stereos & Alarms"
	end
##
	def test04_09_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_boat_dealers.click
		
		assert $browser.text.include? "Boat Dealers"
	end
##
	def test04_10_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_auto_dealers.click
		
		assert $browser.text.include? "Auto Dealers"
	end
##
	def test04_11_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_marinas.click
		
		assert $browser.text.include? "Marinas"
	end
##
	def test04_12_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_auto_repair.click
		
		assert $browser.text.include? "Auto Repair & Service"
	end
##
	def test04_13_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_auto_parts.click
		
		assert $browser.text.include? "Auto Parts & Accessories"
	end
##
	def test04_14_automotive_boating
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_automotive.click
		$directory_gas_stations.click
		
		assert $browser.text.include? "Gas Stations"
	end

#Test 5: Validate Sports & Fitness Directory Entries
	def test05_01_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		
		assert $browser.text.include? "Ski Resorts"
	end
##
	def test05_02_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_ski_resorts.click
		
		assert $browser.text.include? "Ski Resorts"
	end
##
	def test05_03_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_ski_resorts.click
		
		assert $browser.text.include? "Ski Resorts"
	end
##
	def test05_04_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_horse_riding.click
		
		assert $browser.text.include? "Horse Riding"
	end
##
	def test05_05_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_dance_studios.click
		
		assert $browser.text.include? "Dance Studios"
	end
##
	def test05_06_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_athletic.click
		
		assert $browser.text.include? "Athletic Complexes"
	end
##
	def test05_07_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_golf.click
		
		assert $browser.text.include? "Golf Courses"
	end
##
	def test05_08_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_gyms.click
		
		assert $browser.text.include? "Gyms"
	end
##
	def test05_09_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_personal_trainers.click
		
		assert $browser.text.include? "Personal Coaches/Trainers"
	end
##
	def test05_10_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_sports_leagues.click
		
		assert $browser.text.include? "Sports Leagues"
	end
##
	def test05_11_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_sports_teams.click
		
		assert $browser.text.include? "Sports Teams"
	end
##
	def test05_12_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_stadiums_arenas.click
		
		assert $browser.text.include? "Stadiums & Arenas"
	end
##
	def test05_13_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_skating.click
		
		assert $browser.text.include? "Roller & Ice Skating Rinks"
	end
##
	def test05_14_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_trails.click
		
		assert $browser.text.include? "Trails"
	end
##
	def test05_15_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_pools.click
		
		assert $browser.text.include? "Pools"
	end
##
	def test05_16_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_yoga.click
		
		assert $browser.text.include? "Yoga & Pilates Studios"
	end
##
	def test05_17_travel_transportation
		login $user_1_email, $master_password
		$browser.goto($patch_directory)
##
		$directory_sports_fitness.click
		$directory_martial_arts.click
		
		assert $browser.text.include? "Martial Arts"
	end
end