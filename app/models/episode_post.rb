class EpisodePost < ApplicationRecord
  belongs_to :user
  has_many :episodes

end
