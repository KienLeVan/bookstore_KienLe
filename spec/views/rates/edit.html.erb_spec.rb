require 'rails_helper'

RSpec.describe "rates/edit", type: :view do
  before(:each) do
    @rate = assign(:rate, Rate.create!(
      :value => 1.5,
      :user => nil,
      :book => nil
    ))
  end

  it "renders the edit rate form" do
    render

    assert_select "form[action=?][method=?]", rate_path(@rate), "post" do

      assert_select "input#rate_value[name=?]", "rate[value]"

      assert_select "input#rate_user_id[name=?]", "rate[user_id]"

      assert_select "input#rate_book_id[name=?]", "rate[book_id]"
    end
  end
end
