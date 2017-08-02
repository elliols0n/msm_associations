# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  name       :string
#  dob        :string
#  bio        :text
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Actor < ApplicationRecord
#   Character:
#   - movie_id: must be present
  validates :movie_id, :presence => true
  
#   - actor_id: must be present
validates :actor_id, :presence => true

#   - name: no rules

end
