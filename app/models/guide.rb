class Guide < ActiveRecord::Base
  belongs_to :guide_pack_version
  belongs_to :guide_image
end
