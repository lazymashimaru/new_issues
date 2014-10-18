json.array!(@new_issues) do |new_issue|
  json.extract! new_issue, :id, :title, :description, :no_followers
  json.url new_issue_url(new_issue, format: :json)
end
