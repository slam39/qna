require 'rails_helper'


RSpec.describe Answer, :type => :model do
	it { should belong_to(:question) }

	it { should validate_presence_of :body }
	it { should ensure_length_of(:body).is_at_least(7)}
	it { should ensure_length_of(:body).is_at_most(100)}
end