require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title",
        :description => "MyText",
        :author_name => "Author Name",
        :publisher_name => "Publisher Name",
        :unit_price => 2.5,
        :photo => "Photo"
      ),
      Book.create!(
        :title => "Title",
        :description => "MyText",
        :author_name => "Author Name",
        :publisher_name => "Publisher Name",
        :unit_price => 2.5,
        :photo => "Photo"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Author Name".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
  end
end
