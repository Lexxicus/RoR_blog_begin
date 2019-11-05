require "rails_helper"

feature "Contact Creation" do
  scenario "allow a guest to create contact" do
    visit '/contacts'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Message', with: 'caplin'
    click_button 'Send message'

    expect(page).to have_content 'Thank you'
  end

  scenario "allow acces to contacts page" do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end