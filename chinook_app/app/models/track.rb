class Track < ActiveRecord::Base

  SHORT = 180000
  LONG  = 360000

  scope :short,  -> { shorter_than_or_equal_to(SHORT) }
  scope :medium, -> { where('milliseconds > ? AND milliseconds < ?', SHORT, LONG) }
  scope :long,   -> { where('milliseconds >= ?', LONG) }

  scope :shorter_than_or_equal_to, -> (milliseconds) { where('milliseconds <= ?', milliseconds)}

  scope :starts_with, -> (first_char) { where('name ILIKE ?', "#{ first_char}%") }

end
