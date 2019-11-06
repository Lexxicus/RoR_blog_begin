# frozen_string_literal: true

require 'rails_helper'

feature 'Contact Creation' do
  scenario 'allow a guest to create contact' do
    visit new_contacts_path
    fill_in :contact_email, with: 'user@example.com'
    fill_in :contact_message, with: 'caplin'
    click_button 'Send message'

    expect(page).to have_content I18n.t('contacts.thank_you')
  end

  scenario 'allow acces to contacts page' do
    visit new_contacts_path

    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end
