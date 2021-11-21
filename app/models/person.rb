class Person < ApplicationRecord
  broadcasts_to :event
  belongs_to :event
end
