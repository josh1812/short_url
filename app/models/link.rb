class Link < ActiveRecord::Base
  before_save :shorten_url

  private

  def shorten_url
    self.short_url = SecureRandom.hex(2)
  end

end
