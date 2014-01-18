require 'spec_helper'

describe ApplicationHelper do

	describe "full title" do
		it "full title should contain the page title" do
			expect(full_title("foo")).to match(/foo/)
		end
		it "full title should contain the base title" do
			expect(full_title('foo')).to match(/^Ruby on Rails Tutorial Sample App/)
		end
		it "should not have separator for root page" do
			expect(full_title('')).not_to match(/\|/)
		end
	end
end
