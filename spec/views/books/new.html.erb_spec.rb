require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :title => "MyString",
      :description => "MyText",
      :author_name => "MyString",
      :publisher_name => "MyString",
      :unit_price => 1.5,
      :photo => "MyString"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "textarea#book_description[name=?]", "book[description]"

      assert_select "input#book_author_name[name=?]", "book[author_name]"

      assert_select "input#book_publisher_name[name=?]", "book[publisher_name]"

      assert_select "input#book_unit_price[name=?]", "book[unit_price]"

      assert_select "input#book_photo[name=?]", "book[photo]"
    end
  end
end
