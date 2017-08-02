# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  actor_id   :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Character < ApplicationRecord
#   Actor:
#   - name: must be present; must be unique in combination with dob
validates :name, :presence => true, :uniqueness => { :scope => :dob }

#   - dob: no rules
#   - bio: no rules
#   - image_url: no rules

belongs_to(:actor, :class_name => "Actor", :foreign_key => "actor_id")

end
