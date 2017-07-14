require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    visit root_path
    click_link 'Login'
    click_link 'Sign up'
    fill_in 'Email', :with => 'test@test.com'
    fill_in 'Username', :with => 'test'
    fill_in 'Password', :with => "123456"
    fill_in 'Password confirmation', :with => "123456"
    click_on 'Sign up'
    expect(page).to have_content 'test'
  end
end
