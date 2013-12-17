#!env ruby

require File.dirname(__FILE__) + '/../spec_helper'

describe "占い", :type => :feature do

    before (:each) do
        visit "/"
    end

    it "星座選択" do
        find('a#pbfortunebtn').click

        expect( find('ul#pbfortunefw')[:style] ).to have_text /display: block/mi
    end
end

