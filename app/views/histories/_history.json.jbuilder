json.extract! history, :id, :title, :details, :completed, :deadline, :completion_date, :created_at, :updated_at
json.url history_url(history, format: :json)
