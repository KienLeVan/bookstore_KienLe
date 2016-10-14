require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "MyString",
      :description => "MyText",
      :author_name => "MyString",
      :publisher_name => "MyString",
      :unit_price => 1.5,
      :photo => "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "textarea#book_description[name=?]", "book[description]"

      assert_select "input#book_author_name[name=?]", "book[author_name]"

      assert_select "input#book_publisher_name[name=?]", "book[publisher_name]"

      assert_select "input#book_unit_price[name=?]", "book[unit_price]"

      assert_select "input#book_photo[name=?]", "book[photo]"
    end
  end
end
