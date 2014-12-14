feature 'Signing in' do
  let(:loginpage) { LoginPage.new }
  before(:each) { loginpage.load }

  scenario 'Signing in with correct credentials' do
    homepage = HomePage.new
    loginpage.default_login.login('************','************')
    expect(homepage.name_vip.text).to have_text('************')
  end
end
