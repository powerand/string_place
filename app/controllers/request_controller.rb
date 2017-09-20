class RequestController < ApplicationController
  def index
    @request = Request.new
    @requests = Request.all
  end

  def create
    req = Request.create params.require(:request).permit(:text)
    if req.valid?
      count = $redis.incr('count')
      ActionCable.server.broadcast('request', count: count, diff: render(partial: 'request', locals: { :req => req }))
    else
      raise req.errors.inspect
    end
  end

  def count
  end
end
