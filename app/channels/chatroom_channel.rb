class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel" (Which channel are you streaming to?)
    # Find the channel we're on, and stream to the channel linked to the chatroom

    chatroom = Chatroom.find(params[:id])

    # Each instance of a chatroom will have its own channel
    stream_for chatroom

    # stream_for "general" <-- general channel
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    # (When you leave, do something here)
  end
end
