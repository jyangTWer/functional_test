module LoginSteps
  step 'I login the golden data' do
    loginpage = LoginPage.new
    loginpage.load
    loginpage.default_login.login('************','************')
  end

  step 'I should see :text' do |text|
    homepage = HomePage.new
    expect(homepage.name_vip.text).to eq text
  end
end
