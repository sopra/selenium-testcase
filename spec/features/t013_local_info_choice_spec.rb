#!env ruby

require File.dirname(__FILE__) + '/../spec_helper'

describe "地域枠", :type => :feature do

    before (:each) do
        visit "/"
    end

    it "地域選択フォーム表示" do
        find('a#localbtn').click

        expect( page ).to have_xpath '//div[@id="localfw" and @class="ulmwindow"]'
    end
end

