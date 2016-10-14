require 'rails_helper'

RSpec.describe "rates/show", type: :view do
  before(:each) do
    @rate = assign(:rate, Rate.create!(
      :value => 2.5,
      :user => nil,
      :book => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
