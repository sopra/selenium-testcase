#!env ruby

require File.dirname(__FILE__) + '/../spec_helper'

describe "トピックス枠", :type => :feature do

    before (:each) do
        visit "/"
    end

    it "経済タブ押下" do

        find( 'a#economy' ).click

        expect( find( 'div#topicsbox > div > ul > li.tab1')[:class] ).to have_text /on/mi
    end
end
