class FortuneMessage < ActiveRecord::Base

  def self.random
    self.limit(1).offset(rand(self.count)).first
  end
end
