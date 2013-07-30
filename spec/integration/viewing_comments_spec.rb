require 'spec_helper'

feature "Viewing comments" do
  before do
    textmate_2 = Factory(:post, :title => "TextMate 2")
    Factory(:comment,
            :post => textmate_2,
            :title => "Make it shiny!",
            :description => "Gradients! Starbursts! Oh my!")

    internet_explorer = Factory(:post, :title => "Internet Explorer")

    Factory(:comment,
            :post => internet_explorer,
            :title => "Standards compliance",
            :description => "Isn't a joke.")

    visit '/'
  end

  scenario "Viewing comments for a given post" do
    click_link "TextMate 2"
    page.should have_content("Make it shiny!")
    page.should_not have_content("Standards compliance")
    click_link "Make it shiny!"
    #within("#ticket h2") do
     # page.should have_content("Make it shiny!")
    #end
    #  page.should have_content("Gradients! Starbursts! Oh my!")
    end
  end
