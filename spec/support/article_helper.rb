def new_article
  visit new_article_path
  fill_in :article_title, with: 'Article title'
  fill_in :article_text, with: 'Article text'
  click_button 'Save Article'
end