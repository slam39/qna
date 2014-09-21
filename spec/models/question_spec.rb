require 'rails_helper'


RSpec.describe Question, :type => :model do
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }

  it { should ensure_length_of(:title).is_at_most(100) }
  it { should ensure_length_of(:body).is_at_most(512) }

  it { should have_many(:answers) }
end