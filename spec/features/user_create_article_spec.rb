# frozen_string_literal: true

require "rails_helper"

feature "Article Creation" do

  before(:each) do
    sign_up
  end

  scenario "allows user to visit article page" do
    visit new_article_path
    expect(page).to have_content I18n.t('article.new_article')

  end

  scenario 'allow user to create new article' do
    visit new_article_path
    fill_in :article_title, with: 'Article title'
    fill_in :article_text, with: 'Article text'
    click_button 'Save Article'

    expect(page).to have_content 'Article title'
  end

end
