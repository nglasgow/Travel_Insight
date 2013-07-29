require 'spec_helper'

feature 'Creating Blog Post' do
  scenario "can create a blog post" do
    visit '/'
    click_link 'New Post'
    fill_in 'Title', :with => 'Taiwan'
    fill_in 'Blog', :with => 'Travel experiences'
    click_button 'Create Post'
    page.should have_content('Post has been created')
  end
end
