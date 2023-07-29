class Event < ApplicationRecord
    belongs_to :creator, foreign_key: :creator_id, class_name: 'User'

    has_many :event_attendences, foreign_key: :attended_event_id, dependent: :destroy
    has_many :attendees, through: :event_attendences, source: :event_attendee, dependent: :destroy

    validates :title, presence: true
    validates :description, presence: true
    validates :location, presence: true
    validates :date_time, presence: true

    scope :upcoming, -> { where("date_time >= ?", DateTime.now).order(:date) }
    scope :past, -> { where("date_time < ?", DateTime.now).order(:date) }
end
