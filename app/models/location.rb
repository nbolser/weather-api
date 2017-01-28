class Location < ActiveRecord::Base
  has_many :recordings
end
