# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid with valid attributes' do
    book = Book.new(
      title: 'Percy Jackson and the Lightning Thief',
      author: 'Rick Riordan',
      price: 19.99,
      date_published: '2005-06-28'
    )
    expect(book).to be_valid
  end

  it 'is invalid without title' do
    book = Book.new(
      title: nil,
      author: 'Rick Riordan',
      price: 19.99,
      date_published: '2005-06-28'
    )
    expect(book).not_to be_valid
  end

  it 'is invalid without author' do
    book = Book.new(
      title: 'Percy Jackson and the Lightning Thief',
      author: nil,
      price: 19.99,
      date_published: '2005-06-28'
    )
    expect(book).not_to be_valid
  end

  it 'is invalid without price' do
    book = Book.new(
      title: 'Percy Jackson and the Lightning Thief',
      author: 'Rick Riordan',
      price: nil,
      date_published: '2005-06-28'
    )
    expect(book).not_to be_valid
  end

  it 'is invalid without date published' do
    book = Book.new(
      title: 'Percy Jackson and the Lightning Thief',
      author: 'Rick Riordan',
      price: 19.99,
      date_published: nil
    )
    expect(book).not_to be_valid
  end

end