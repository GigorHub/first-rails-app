class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    # fetch model data
    # User.all
    # raise
    # params['member'] # => searched term igor
    @members = %w[thanh dimitri germain damien julien]

    @members = @members.select { |member| member.starts_with?(params['member']) } if params[:member].present?
    # => empty for now
  end
end
