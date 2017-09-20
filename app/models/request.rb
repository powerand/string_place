class Request < ApplicationRecord
  validates :text, presence: true

  def self.all_count
    $redis.get('count').to_i
  end

  def self.destroy_all
    $redis.del('count')
    $redis.set('changed_at', Time.now)
    super
  end
end
