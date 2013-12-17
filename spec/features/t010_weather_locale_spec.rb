#!env ruby

require File.dirname(__FILE__) + '/../spec_helper'

describe "天気", :type => :feature do

    before (:each) do
        visit "/"
    end

    it "地域設定枠表示" do
        find('a#pbweatherbtn').click

        expect( page ).to have_xpath '//div[@id="pbweatherfw" and @class="ulmwindow"]'
    end
end

