json.extract! profil, :id, :nom, :prenom, :pseudo, :detail, :site, :user_id, :created_at, :updated_at
json.url profil_url(profil, format: :json)