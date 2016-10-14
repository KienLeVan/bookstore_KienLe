require 'rails_helper'

RSpec.describe "rates/index", type: :view do
  before(:each) do
    assign(:rates, [
      Rate.create!(
        :value => 2.5,
        :user => nil,
        :book => nil
      ),
      Rate.create!(
        :value => 2.5,
        :user => nil,
        :book => nil
      )
    ])
  end

  it "renders a list of rates" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
