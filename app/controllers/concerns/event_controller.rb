class EventController < WebsocketRails::BaseController
  def initialize_session
    # perform application setup here
    #puts ('Client connected',count)
    puts "Client connected"
    controller_store[:message_count] = 0
    
  end
  
  def client_disconnected
    count = count - 1
  end
  
  def action_method
    trigger_success (ip)
  end
  
  def send_message_method
    puts(message)
    #send_message :event_send_message, message
    broadcast_message :event_send_message, message
    
  end
  
end