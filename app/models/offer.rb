class Offer < ApplicationRecord
  include Offers::StateHandler

  scope :enabled, -> { where(enabled: true) }
  scope :already_started, -> { where('starts_at <= :date_current', date_current: Date.current) }
  scope :not_ended, -> { where(ends_at: nil).or(Offer.where('ends_at >= ?', Date.current)) }

  def enabled?
    return false if not_started? || finished?

    true
  end
end
