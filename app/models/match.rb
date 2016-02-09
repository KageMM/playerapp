class Match < ActiveRecord::Base
  validates :title,:location,:date,:time, presence: true
  has_attached_file :avatar, :styles => {:medium => "300x300>"}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_many :players
end
