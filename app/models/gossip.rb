class Gossip < ApplicationRecord
  has_many :commentaires
  belongs_to :user, optional:true
  has_and_belongs_to_many :tags
  belongs_to :user
  has_many :likes
end
