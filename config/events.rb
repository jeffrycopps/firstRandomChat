WebsocketRails::EventMap.describe do
  # You can use this file to map incoming events to controller actions.
  # One event can be mapped to any number of controller actions. The
  # actions will be executed in the order they were subscribed.
  #
  # Uncomment and edit the next line to handle the client connected event:
  subscribe :client_connected, :to => EventController, :with_method => :initialize_session
  subscribe :event_send_message, :to => EventController, :with_method => :send_message_method
  subscribe :client_disconnected, :to => EventController, :with_method => :client_disconnected
  #
  # Here is an example of mapping namespaced events:
  #   namespace :product do
  #     subscribe :new, :to => ProductController, :with_method => :new_product
  #   end
  # The above will handle an event triggered on the client like `product.new`.
end
