class Episode < ApplicationRecord
  belongs_to :podcast
  has_attached_file :episode_thumbnail, styles: { large: "1000x1000#", medium: "550x500#"}
  validates_attachment_content_type :episode_thumbnail, content_type: /\Aimage\/.*\z/

end
