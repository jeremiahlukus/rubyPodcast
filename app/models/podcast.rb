class Podcast < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :episodes
  has_attached_file :thumbnail, styles: { large: "1000x1000#", medium: "550x500#"}
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/


end
