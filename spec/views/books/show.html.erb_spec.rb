require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "Title",
      :description => "MyText",
      :author_name => "Author Name",
      :publisher_name => "Publisher Name",
      :unit_price => 2.5,
      :photo => "Photo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Author Name/)
    expect(rendered).to match(/Publisher Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Photo/)
  end
end
