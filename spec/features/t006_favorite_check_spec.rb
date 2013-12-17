#!env ruby

require File.dirname(__FILE__) + '/../spec_helper'

describe "お気に入り選択", :type => :feature do

    before (:each) do
        visit "/"
    end

    it "お気に入りフォーム出現" do
        find('span#cbassistedit > a').click

        sleep 2

        expect( find('div#cb2bgcx')[:style] ).to have_text /width: 590px/mi
        expect( page ).to have_xpath '//div[@id="cb2yjedit"]'
    end
end

