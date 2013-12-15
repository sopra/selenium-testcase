#!env ruby

require 'capybara/rspec'

Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.yahoo.co.jp/'

describe "検索項目一覧", :type => :feature do

    before(:each) do
        visit "/"
    end

    it "検索一覧ボタン押下" do
        find('a#srchMorebtn').click()

        Capybara.ignore_hidden_elements = false
        expect( find('div#srchMorefw')[:style] ).to have_text /display: block/mi
        Capybara.ignore_hidden_elements = true
    end
end
