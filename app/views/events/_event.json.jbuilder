json.extract! event, :id, :name, :start_date, :end_date, :location, :address_1, :address_2, :address_3, :city, :state, :zip, :details, :created_at, :updated_at
json.url event_url(event, format: :json)
