class TryMailer < ActiveRecord::Base
  def self.maily
    AppMailer.try_send(User.first).deliver
  end
end