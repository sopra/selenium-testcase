#!env ruby

require File.dirname(__FILE__) + '/../spec_helper'

describe "スポットライト", :type => :feature do

    before (:each) do
        visit "/"
    end

    it "初期表示チェック" do
        Capybara.ignore_hidden_elements = false
        expect( page ).to have_xpath '//li[@id="splCrslNavPrev"]'
        expect( page ).to have_xpath '//li[@id="splCrslNavNext"]'
        expect( find('li#splCrslNavNext')[:class] ).to have_text /on/mi
        Capybara.ignore_hidden_elements = true
    end

    it "次へ５回を押下" do
        find('li#splCrslNavNext > a').click
        find('li#splCrslNavNext > a').click
        find('li#splCrslNavNext > a').click
        find('li#splCrslNavNext > a').click
        find('li#splCrslNavNext > a').click

        Capybara.ignore_hidden_elements = false
        expect( find('li#splCrslNavNext')[:class] ).not_to have_text /on/mi
        expect( find('li#splCrslNavPrev')[:class] ).to have_text /on/mi
        Capybara.ignore_hidden_elements = true
    end
end

