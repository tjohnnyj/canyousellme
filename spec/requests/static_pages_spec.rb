require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Canyousell.me'" do
      visit '/static_pages/home'
      expect(page).to have_content('Canyousellme')
    end
  end
end