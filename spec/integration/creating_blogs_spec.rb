require 'spec_helper'

feature 'Creating Blog Post' do
  before do
    visit '/'
    click_link "New Post"
  end

  scenario "can create a blog post" do
    fill_in 'Title', :with => 'Taiwan'
    fill_in 'Blog', :with => 'Travel experiences'
    click_button 'Create Post'
    page.should have_content('Post has been created.')

    #post = Post.find_by_name("TextMate 2")
    #page.current_url.should == project_url(project)
    #title = "TextMate 2 - Projects - Travel Insight"
    #find("title").should have_content(title)
  end

  scenario "can not create a post without a title" do
    click_button 'Create Post'
    page.should have_content("Post has not been created.")
    #page.should have_content("Title can't be blank")
  end

end


