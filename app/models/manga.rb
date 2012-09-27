class Manga
  include Mongoid::Document
  include Mongoid::FullTextSearch
  paginates_per 20

  field :name
  field :released
  field :type
  field :thumb
  field :views, type: Integer, default: 0
  field :description
  field :cover_photo_url
  field :photo_album_name
  field :author
  field :create_date, :type => Date,default: Time.new(2012,9,2,15,25,0, "+09:00")

  has_many :chapters
  has_many :comments

  fulltext_search_in :name, :author
end
