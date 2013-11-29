json.array!(@team_members) do |team_member|
  json.extract! team_member, :name, :job_title, :email, :image, :description, :curriculum_vitae
  json.url team_member_url(team_member, format: :json)
end
