class Certificate < ActiveRecord::Base

validates_presence_of :consignor, :consignee, :date_of_issue, :state_of_origin

  US_STATE_TYPES = [
    ["Illinois", "IL"],
    ["Michigan", "MI"],
    ["Wisconsin", "WI"]
  ]

  has_many :animals

end
