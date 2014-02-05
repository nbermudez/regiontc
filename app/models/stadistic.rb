class Stadistic < ActiveRecord::Base
  belongs_to :typestadistic
  belongs_to :user
  belongs_to :chapel
  attr_accessible :month, :total, :year, :user_id, :chapel_id, :typestadistic_id

  def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |stadistic|
	      csv << stadistic.attributes.values_at(*column_names)
	    end
	  end
	end
end
