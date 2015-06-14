json.array!(@nifty_scaffolds) do |nifty_scaffold|
  json.extract! nifty_scaffold, :id, :forum, :name, :description
  json.url nifty_scaffold_url(nifty_scaffold, format: :json)
end
