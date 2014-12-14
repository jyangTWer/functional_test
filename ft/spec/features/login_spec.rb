require 'spec_helper'

feature 'Signing in' do
  scenario 'Signing in with correct credentials' do
    visit '/'

    within 'form[action*="callback"]' do
      within 'div.field:nth-child(2)' do
        find('input#auth_key').set '**************************'
      end

      within 'div.field:nth-child(3)' do
        find('input#password').click
        find('input#password').set '**************************'
      end

      find('input[name="commit"]').click
    end

    expect(page).to have_link '杨静TW'
  end
end
