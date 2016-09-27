json.extract! certificate, :id, :description, :expiration, :created_at, :updated_at
json.url certificate_url(certificate, format: :json)