class WeeklyMatch < ActiveRecord::Base
  belongs_to :player
  belongs_to :match
end
