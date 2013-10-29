load "watir_test/Test_Data/test_data.rb"
module Common_Methods
  class Common < TestData
    def maximize_browser
      screen_width = $browser.execute_script("return screen.width;")
      screen_height = $browser.execute_script("return screen.height;")
      $browser.driver.manage.window.resize_to(screen_width,screen_height)
      $browser.driver.manage.window.move_to(0,0)
    end
  end
  
  def random
    srand
    rand(1000000).to_s
  end

  def bigrandom
	srand
	rand(1000000000000000000000000).to_s
  end

  def file_upload(fname)
    $file_upload.set("#{$testDir}/#{fname}")
  end

  def verify_text(*args)
    i = 0;
    while i < args.length do
        assert $browser.text.include? "#{args[i]}"
      i +=1
    end
  end
  
  def wait_for_ajax
  	num = 1  #wait until ajax spinner is not displayed or ten seconds which ever comes first.
  	while false == $browser.div(:id => 'ajax_spinner', :style =>'display: none;') && num < 10
    	sleep 1
    	num += 1
  	end
  end
  
  #Time definitions and calculations
  def current_month_fullname
    return Time.now.strftime("%B").to_s #The full month name (January)
  end
  
  def current_month_num
  	return Time.now.strftime("%m").to_i #01-12
  end
  
  def current_day
    return Time.now.strftime("%d").to_i #01-31
  end
  
  def current_year_xxxx
    return Time.now.strftime("%Y").to_i  #2013
  end
  
  def current_hour_24hr
    return Time.now.strftime("%H").to_i  #00-23
  end 
  
  def next_year
    year = current_year_xxxx + 1
    return year
  end 
end 