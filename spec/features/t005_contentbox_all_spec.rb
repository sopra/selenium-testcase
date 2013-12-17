#!env ruby

require File.dirname(__FILE__) + "/../spec_helper"

describe "コンテントボックス一覧" , :type => :feature do

    before (:each) do
        visit "/"
    end

    it "サービス一覧" do
        find('span#cbassistall > a').click

        sleep 2

        expect( find('div#cb2bgcx')[:style]      ).to have_text /width: 590px/mi
        expect( page ).to have_xpath '//div[@id="cb2yjservice"]'
    end
end
