#required gems
require "rubygems"
require "test/unit"
require "watir-webdriver"
require 'yaml'

class WatirTest < Test::Unit::TestCase
  attr_accessor :driver

#Environment configuations
$environment = ENV['ENV'] || 'nixon'
CONFIG = YAML::load_file('config/logins.yml')[$environment]
$local_patch = "bellmore."

$user_1_email = CONFIG["user_1_email"]
$user_2_email = CONFIG["user_2_email"]
$user_3_email = CONFIG["user_3_email"]
$admin_1_email = CONFIG["admin_1_email"]
$editor_1_email = CONFIG["editor_1_email"]
$master_password = CONFIG["master_password"]
$post_media_username = CONFIG["media_username"]
$timeout = 8

#Browser Setup
  def setup
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.timeout = 180 # seconds – default is 60
    config_browser = ENV['BROWSER'] || 'chrome'

    if config_browser == 'safari'
      require 'safariwatir'
      self.driver ||= Watir::Browser.new :safari, :http_client => client
    elsif config_browser == 'chrome'
      self.driver ||= Watir::Browser.new :chrome, :http_client => client
    elsif config_browser == 'ie'
      self.driver ||= Watir::Browser.new :ie, :http_client => client
    else
      self.driver ||= Watir::Browser.new :firefox, :http_client => client
    end
  end

#Browser closout
  def teardown
    driver.close
  end
end

#Define Global Variables and Methods ####NEEDS TO BE AFTER WatirTest, WatirTests needs to be defined for global_variables to work
$LOAD_PATH << './watir_lib'  
require 'watir/global_variables.rb'
require 'Utility/global_common'



####Unused Code
#require 'singleton'
=begin
class Browser
  include Singleton

  attr_accessor :driver

  WEB_DRIVER_VAR = {
    'firefox' => 'Selenium::WebDriver::Firefox',
    'chrome'  => 'Selenium::WebDriver::Chrome',
    'ie'      => 'Selenium::WebDriver::IE'
  }

  WEBDRIVER_CLASS = {
    'ie'      => lambda { Watir::Browser.new :ie },
    'firefox' => lambda { Watir::Browser.new :firefox },
    'opera'   => lambda { Watir::Browser.new :opera },
    'safari'  => lambda { Watir::Browser.new :safari },
    'chrome'  => lambda { Watir::Browser.new :chrome }
  }

  def initialize
    config_version = ENV['BROWSER_VERSION']
    config_browser = ENV['BROWSER'] || 'firefox'

    if config_browser == 'safari'
      require 'safariwatir'
    else
      require 'watir-webdriver'
      #require 'watir-webdriver-performance'
    end

    if config_version
      webdriver_variable = WEB_DRIVER_VAR[config_browser]

      browsers   = YAML::load_file('config/browser.yml')
      executable = browsers[config_browser][config_version]
      raise "#{config_version} not supported for #{browser} in config/browser.yml" unless executable

      eval "#{webdriver_variable}.path = File.expand_path('#{executable}')"
    end

    remote_run = ENV['RM']

    if remote_run == 'WinVm'
      self.driver = Watir::Browser.new(:remote, :url => 'http://10.167.74.235:4444/wd/hub')
    else
      self.driver = WEBDRIVER_CLASS[config_browser].call
    end

    at_exit do
      self.driver.close
    end
  end
end
=end