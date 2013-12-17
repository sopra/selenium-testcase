#!env ruby

require File.dirname(__FILE__) + "/../spec_helper"

describe "検索サジェスト", :type => :feature do

    before(:each) do
        visit "/"
    end

    it "検索サジェスト表示" do
        fill_in 'srchtxt', :with => 'yahoo'
        sleep 2

        expect( find("div#srchAssistBd")[:style] ).to have_text /display: block/mi
    end
end

