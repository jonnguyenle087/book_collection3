# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'with all attributes' do
    visit new_book_path
    fill_in 'book[title]', with: 'Percy Jackson and the Lightning Thief'
    fill_in 'book[author]', with: 'Rick Riordan'
    fill_in 'book[price]', with: 19.99
    fill_in 'book[date_published]', with: '2006-06-28'
    click_button 'Create Book'
    expect(page).to have_content("Book was successfully created.")
  end
  
  scenario 'without a title' do
    visit new_book_path
    fill_in 'book[author]', with: 'Rick Riordan'
    fill_in 'book[price]', with: 19.99
    fill_in 'book[date_published]', with: '2006-06-28'
    click_button 'Create Book'
    expect(page).to have_content("Title can't be blank.")
  end

  scenario 'without an author' do
    visit new_book_path
    fill_in 'book[title]', with: 'Percy Jackson and the Lightning Thief'
    fill_in 'book[price]', with: 19.99
    fill_in 'book[date_published]', with: '2006-06-28'
    click_button 'Create Book'
    expect(page).to have_content("Author can't be blank.")
  end

  scenario 'without a price' do
    visit new_book_path
    fill_in 'book[title]', with: 'Percy Jackson and the Lightning Thief'
    fill_in 'book[author]', with: 'Rick Riordan'
    fill_in 'book[date_published]', with: '2006-06-28'
    click_button 'Create Book'
    expect(page).to have_content("Price can't be blank.")
  end

  scenario 'without a date published' do
    visit new_book_path
    fill_in 'book[title]', with: 'Percy Jackson and the Lightning Thief'
    fill_in 'book[author]', with: 'Rick Riordan'
    fill_in 'book[price]', with: 19.99
    click_button 'Create Book'
    expect(page).to have_content("Date Published can't be blank.")
  end

end