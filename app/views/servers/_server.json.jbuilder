json.extract! server, :id, :host_name, :ip_address, :operating_system, :cpu_cores, :memory, :disk_space, :form_id, :created_at, :updated_at
json.url server_url(server, format: :json)