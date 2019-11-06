# frozen_string_literal: true

require "rails_helper"

feature "Account Creation" do
  scenario "allow a guest to create account" do
    visit new_user_registration_path
    fill_in :user_email, with: 'user@example.com'
    fill_in :user_username, with: 'caplin'
    fill_in :user_password, with: '1234567'
    fill_in :user_password_confirmation, with: '1234567'
    click_button 'Sign up'

    expect(page).to have_content I18n.t('devise.registrations.signed_up')

  end
end

