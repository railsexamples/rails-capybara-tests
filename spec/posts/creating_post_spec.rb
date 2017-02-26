require 'rails_helper.rb'
 
feature 'Creating post' do  
  scenario 'can create a post' do
    # 1. go to root where will be button to Add New Book:
    visit '/posts'
    # 2. click on Add New Book button
    click_link 'New Post'
    # 3. Fill form - add title
    fill_in 'post_title', with: 'Deneme Başlık'
    fill_in 'post_content', with: 'Deneme İçerik'  
    # 4. Click on submit form button
    click_button 'Create Post'
    # 5. Then we should be redirected to show page with book details (book title)
    expect(page).to have_content('Deneme Başlık')
  end
end