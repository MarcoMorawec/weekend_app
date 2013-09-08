class Pin < ActiveRecord::Base
  attr_accessible :hour, :emotion, :learned, :pin_image, :learned_1, :learned_2, :learned_3

    mount_uploader :pin_image, PinImageUploader

end
