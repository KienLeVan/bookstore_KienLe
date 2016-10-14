#features/step_definitions/book_detail_steps.rb
Given(/^there's a book title "(.*?)"$/) do |title|
  DatabaseCleaner.clean
  @book = FactoryGirl.create(:book)
  @user_1 = FactoryGirl.create(:user)
  @user_2 = FactoryGirl.create(:another_user)
  FactoryGirl.create(:rate, book_id: @book.id, user_id: @user_1.id)
  FactoryGirl.create(:rate, value: 4, book_id: @book.id, user_id: @user_2.id)
end

When(/^I am on the book detail page of "(.*?)"$/) do |title|
  @book = Book.find_by_title(title)
  visit book_path(@book)
end

Then(/^I should see the "(.*?)" title$/) do |title|
  page.should have_content(title)
end

Then(/^I should see author name "(.*?)"$/) do |author|
  page.should have_content(author)
end

Then(/^I should see publisher is "(.*?)"$/) do |publisher|
  page.should have_content(publisher)
end

Then(/^I should see publish date is "(.*?)"$/) do |date|
  page.should have_content(date)
end

Then(/^I should see unit price is "(.*?)"$/) do |price|
  page.should have_content(price)
end

Then(/^I should see the image with alt "(.*?)"$/) do |image|
  page.should have_xpath("//img[@alt=\"#{image}\"]")
end

Then(/^I should see total rating (\d+)$/) do |rating|
  page.should have_content(rating)
end

Then(/^I should see average rating ([^\"]*)$/) do |avg_rating|
  page.should have_content(avg_rating)
end

Then(/^I should see button "(.*?)"$/) do |button|
  page.should have_xpath("//input[@value=\"#{button}\"]")
end