#!env ruby

require File.dirname(__FILE__) + '/../spec_helper'

describe "カレンダー", :type => :feature do

    before (:each) do
        visit "/"
    end

    it "オープン" do
        find( 'h3#pbdata > a' ).click

        expect( find('div#pbcalendar')[:style] ).to have_text /display: block/mi
    end
end

