class DefaultLogin < SitePrism::Section
  element :email, '#auth_key'
  element :password, '#password'
  element :login_button, 'input[name="commit"]'

  def login(username, pass)
    email.set username
    password.set pass
    login_button.click
  end
end

class LoginPage < SitePrism::Page
  set_url '/login'

  section :default_login, DefaultLogin, 'form[action*="callback"]'
end
