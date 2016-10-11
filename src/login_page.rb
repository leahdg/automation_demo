# Now we start our class, our type of object - in this case, a login page
class LoginPage

  # This is the constructor. The login page class will need to have a Driver (browser) so that it
  # can do things, otherwise there will be nothing to make the code work
  def initialize(driver)
    # We tell the class to keep this 'driver' variable, but in a local 'instance', using @
    @driver = driver

    # Now we will use this class to describe what the login page is like - what fields & buttons
    @email_field = driver.find_element(id: 'web_user_email')
    @password_field = driver.find_element(id: 'web_user_password')
    @login_button = driver.find_element(name: 'commit')
  end

  def login(email, password)
    @email_field.send_keys(email)
    @password_field.send_keys(password)
    @login_button.click
  end
end