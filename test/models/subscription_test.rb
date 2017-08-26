require 'test_helper'

class SubscriptionTest < ActiveSupport::TestCase
  test "can belong to either a podcast or a newspaper" do
    podcast = Podcast.new
    subscription1 = Subscription.new(subscribable: podcast)

    newspaper = Newspaper.new
    subscription2 = Subscription.new(subscribable: newspaper)

    assert_equal(subscription1.subscribable, podcast)
    assert_equal(subscription2.subscribable, newspaper)
  end

  test "belongs to a user" do
    user = User.new
    subscription = Subscription.new(subscriber: user)

    assert_equal(subscription.subscriber, user)
  end
end
