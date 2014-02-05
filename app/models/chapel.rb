class Chapel < ActiveRecord::Base
  belongs_to :stake
  attr_accessible :address, :name, :phone
end
