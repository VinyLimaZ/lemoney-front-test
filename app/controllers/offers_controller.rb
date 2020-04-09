class OffersController < ApplicationController
  def index
    @offers = Offer.enabled.already_started.not_ended
  end
end
