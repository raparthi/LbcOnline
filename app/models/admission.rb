class Admission < ActiveRecord::Base
  has_one :section
  has_one :group

  validates :name, presence: true
end
