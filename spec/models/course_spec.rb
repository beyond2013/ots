require 'rails_helper'

RSpec.describe Course do
  describe 'validations' do
		describe 'title' do
			it 'must be present' do
				course = described_class.new
				expect(course).to_not be_valid
			end
		end
  end

	it "is invalid without a code" do

	end

end
