json.extract! book, :id, :title, :description, :author_name, :publisher_name, :published_date, :unit_price, :photo, :created_at, :updated_at
json.url book_url(book, format: :json)