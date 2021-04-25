class Comic < ApplicationRecord
  belongs_to :collection
  
  validates_presence_of :collection_id
end
