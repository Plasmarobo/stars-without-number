Rails.application.routes.draw do


  resources :ship_shares
  resources :psi_discipline_slots
  resources :planet_tags
  concern :app do
    resources :npcs
    resources :fleet_ships
    resources :fleets
    resources :ship_fitting_slots
    resources :ship_fittings
    resources :ship_armor_slots
    resources :ship_armors
    resources :cargo_slots
    resources :cargos
    resources :ship_weapon_slots
    resources :ship_weapons
    resources :ships
    resources :ship_hulls
    resources :vehicle_slots
    resources :vehicles
    resources :training_skills
    resources :trainings
    resources :background_skills
    resources :backgrounds
    resources :skill_slots
    resources :class_skills
    resources :skills
      resources :psi_disciplines
    resources :ammo_slots
    resources :stowed_item_slots
    resources :readied_item_slots
    resources :item_slots
    resources :items
    resources :cyberware_slots
    resources :cyberwares
    resources :armor_slots
    resources :armors
    resources :weapon_slots
    resources :weapons
    resources :level_progressions
    resources :luck_save_progressions
    resources :technology_save_progressions
    resources :evasion_save_progressions
    resources :mental_save_progressions
    resources :physical_save_progressions
    resources :attack_bonus_progressions
    resources :character_classes
    resources :characters
    resources :faction_attacks
    resources :faction_actions
    resources :faction_turns
    resources :factions
    resources :faction_assets
    resources :assets
    resources :faction_tags
    resources :locations
    resources :tags
      resources :pois
    resources :orbits
    resources :satellites
    resources :planets
    resources :systems
    resources :sectors
    resources :events
    resources :players
    resources :games
  end

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/session#new', as: :unauthenticated_root
    end
  end

  namespace :api, path: "", constraints: { subdomain: "api" }, defaults: {format: :json}  do
    concerns :app
  end

end
