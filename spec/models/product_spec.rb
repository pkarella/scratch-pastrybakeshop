require 'rails_helper'

describe Product do
  it { should belong_to :user }
  it { should have_many :reviews }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :cost }
end
