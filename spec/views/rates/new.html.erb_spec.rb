require 'rails_helper'

RSpec.describe "rates/new", type: :view do
  before(:each) do
    assign(:rate, Rate.new(
      :value => 1.5,
      :user => nil,
      :book => nil
    ))
  end

  it "renders new rate form" do
    render

    assert_select "form[action=?][method=?]", rates_path, "post" do

      assert_select "input#rate_value[name=?]", "rate[value]"

      assert_select "input#rate_user_id[name=?]", "rate[user_id]"

      assert_select "input#rate_book_id[name=?]", "rate[book_id]"
    end
  end
end
