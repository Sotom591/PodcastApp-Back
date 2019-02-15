class Episode < ApplicationRecord
  belongs_to :podcast
  belongs_to :episode_post
end
