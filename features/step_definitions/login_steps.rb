require "PT_core/Initialization"

Given /^I Open main page using (#{USING_CREDENTIAL})$/ do  |table|

  unless $browser
    Initialization.start
  end                                                                    #initial browser

=begin

  login = $browser.is_element_present(logout='//ul[@class="dropdown-menu"]/li/a')
  if login
    $browser.find_element(:xpath,logout).click
  end                                                                    #if already login, then click out.

=end

  table.rows_hash.each do |key,value|
    step "I type '#{value}' in '#{key}' field"
  end                                                                    #set the username and password

   # $browser.find_element(:xpath => "//input[@class='bn-submit']").click
end



