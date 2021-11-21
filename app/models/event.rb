class Event < ApplicationRecord
  broadcasts

  has_many :persons
end
