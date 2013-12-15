#!env ruby

require 'capybara/dsl'
require 'capybara/rspec'

Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.yahoo.co.jp/'

describe "カラーカスタマイズテスト", :js => true, :type => :feature do

    before(:each) do
        visit "/"
    end

    it "ピンク" do
        find('#clr2>a').click()
        sleep 1

        Capybara.ignore_hidden_elements = false
        expect( page ).to have_xpath '//link[@id="src0"]'
        expect( find('link#src0')[:href] ).to have_text 'http://k.yimg.jp/images/top/sp2/clr/130528/2.css'
        Capybara.ignore_hidden_elements = true
    end
end
