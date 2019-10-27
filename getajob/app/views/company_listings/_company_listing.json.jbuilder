json.extract! company_listing, :id, :name, :description, :website, :created_at, :updated_at
json.url company_listing_url(company_listing, format: :json)
