class OrdersController < ApplicationController
  <%= form_tag orders_path do %>
  <%= hidden_field_tag 'teddy_id', @teddy.id %>
  <%= submit_tag 'Purchase', class: 'btn btn-primary' %>
<% end %>
end
