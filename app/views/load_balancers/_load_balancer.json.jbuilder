json.extract! load_balancer, :id, :type, :ip_address, :type, :points_to, :ports, :ssl_location, :created_at, :updated_at
json.url load_balancer_url(load_balancer, format: :json)