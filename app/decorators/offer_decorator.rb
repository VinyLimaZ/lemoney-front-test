class OfferDecorator
  attr_reader :offer
  delegate_missing_to :offer

  def initialize(offer)
    @offer = offer
  end

  def premium_badge?
    return 'premium-badge' if offer.premium
  end

  def premium_link?
    offer.premium? ? 'premium-link' : 'link'
  end
end
