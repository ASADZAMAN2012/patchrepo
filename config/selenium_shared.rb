$LOAD_PATH << './config/selenium_lib' 
require "rubygems"
require "test/unit"
require "selenium/client"
require 'yaml'

##Selenium_lib files
require 'create_shared'
include Selenium_Creation_Methods
require 'po_shared'
include Selenium_PageObject_Methods

#define environment and browser variables
$environment = ENV['ENV'] || 'nixon'
$browser = ENV['BROWSER'] || 'googlechrome'
if $environment == 'production'  #set url structure
  $local_patch = "flatiron"
  $url = "http://#{$local_patch}.patch.com"
else 
  $local_patch = "bellmore"
  $url = "http://#{$local_patch}.#{$environment}.i.patch.com"
end

#defining universal logins based on defined environment
CONFIG = YAML::load(open(File.join(File.dirname(__FILE__),'logins.yml')))[$environment]
$user = CONFIG["user_1_email"]
$user_2 = CONFIG["user_2_email"]
$user_3 = CONFIG["user_3_email"]
$admin = CONFIG["admin_1_email"]
$editor = CONFIG["editor_1_email"]
$password = CONFIG["master_password"]
$editor_password = CONFIG["editor_password"]


##BROWSER PAGE SETUP
def selenium_setup
  @selenium_driver = Selenium::Client::Driver.new \
     :host => "localhost",
     :port => 4444,
     :browser => "*#{$browser}",
     :url => $url,
     :timeout_in_second => 60
  return @selenium_driver
end

##GENERAL LOGIN/LOGOUT 
def login(usn, pwd)
	@page.open "/login"
    @page.type "name=email", usn
    @page.type "name=password", pwd
    @page.click "id=signin", :wait_for => :page
    sleep 5
    assert @page.is_element_present("//span[@id='user_notifications']/a/span")
end

def logout
	@page.click "//div[@id='nav_personalize']/div/a/i"
    @page.click "xpath=(//a[contains(text(),'Sign Out')])[2]", :wait_for => :page
    sleep 2
    #needs logout verification
end

##RANDOM NUMBER GENERATOR
def random
	srand
	rand(1000000).to_s
end

