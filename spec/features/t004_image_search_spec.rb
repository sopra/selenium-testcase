#!env ruby

require File.dirname(__FILE__) + "/../spec_helper"

describe "画像検索", :js => true, :type => :feature do

    before(:each) do
        visit "/"
    end

    it "検索サーチ" do
        fill_in 'srchtxt', :with => 'yahoo'
        sleep 2

        find("a#isearch").click

        expect( page.current_url ).to have_text /image.search.yahoo.co.jp/mi
    end
end
