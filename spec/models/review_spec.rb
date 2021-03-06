require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should belong_to :product }
  
  it { should validate_presence_of :author }
  it { should validate_presence_of :description }
  it { should validate_length_of(:author).is_at_most(50) }
  it { should validate_length_of(:description).is_at_most(250) }

end
