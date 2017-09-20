class RequestChannel < ApplicationCable::Channel
  def subscribed
    stream_from "request"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
