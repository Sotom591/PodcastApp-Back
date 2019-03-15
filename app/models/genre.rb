require('unirest')

#ListenNotes API endpoint for genres
GENRES_URL = 'http://localhost:3000/api/v1/genres'

#ListenNotes API key
API_KEY = ENV['REACT_APP_LISTENNOTES_API_KEY']

class Genre < ApplicationRecord
  has_many :user_genres
  has_many :users, through: :user_genres

  def get_genres
    #Unirest get request for genres
    Unirest.get(GENRES_URL)
        .header("X-RapidAPI-Key", API_KEY)
        .end((result) => result.body.genres.each { |genre|
          if genre["parent_id"] == 67
            Genre.create(name: genre.name, category_id: genre.id, parent_id: genre.parent_id)
          end
        }
      )
  end
end
