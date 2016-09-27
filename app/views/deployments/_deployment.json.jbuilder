json.extract! deployment, :id, :repo_url, :app_stack, :additional_software, :installation, :form_id, :created_at, :updated_at
json.url deployment_url(deployment, format: :json)