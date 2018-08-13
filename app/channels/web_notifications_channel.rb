class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "web_notifications_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak (data)
    ActionCable.server.broadcast 'web_notifications_channel', message: data('message')
  end
end
