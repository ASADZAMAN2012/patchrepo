require "rubygems"
require "bundler/setup"
require 'yaml'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.name = "all"
  t.test_files = FileList['test/**/*.rb']
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.name = "url_check"
  t.test_files = FileList['sanity_test/url_check/url_*.rb']
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.name = "tag_check"
  t.test_files = FileList['sanity_test/html_tag_check/html_*.rb']
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.name = "pageobjects"
  t.test_files = FileList['pageobjects_selenium/po_*.rb']
end

namespace :setup do
  desc "Assists in multiple version, browser setup"
  task :browsers do
    if is_mac?
      cp 'config/browser.mac.yml', 'config/browser.yml'
      path = File.expand_path("~/.watir/browsers")
      mkdir_p path
      sh "git submodule init"
      sh "git submodule update browsers/mac"

      system "open #{path}"
      puts "Installing browsers"

      browsers = Dir.glob(File.join(File.dirname(__FILE__), 'browsers/mac', '*.tgz'))
      browsers.each do |file|
        sh "tar -xzvf #{file} -C ~/.watir/browsers"
      end

    elsif is_windows?
      cp 'config/browser.windows.yml' 'config/browser.yml'
    else  
      abort
    end  

    browsers = YAML::load_file('config/browser.yml')

    puts "Install or shortcut/symlink (mac) your browsers here:" 
    browsers.keys.each do |browser|
      browsers[browser].keys.each do |version|
        puts "#{browser} #{version}: #{browsers[browser][version].sub(/\.app.*/,'')}"
      end
    end
  end
end

def is_mac?
  RUBY_PLATFORM.downcase.include?("darwin")
end

def is_windows?
   RUBY_PLATFORM.downcase.include?("mswin")
end