class OfferDecorator < ApplicationDecorator
  attr_reader :offer
  delegate_missing_to :offer

  def initialize(offer)
    @offer = offer
  end

  def premium_badge
    if offer.premium?
      h.content_tag(:span, class: 'new badge red premium-badge-layout', data: { 'badge-caption': '' }) do
        'Premium'
      end
    end
  end

  def premium_link
    offer.premium? ? 'green' : 'grey'
  end
end
