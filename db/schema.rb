# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160612182302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ammo_slots", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "weapon_slot_id"
    t.integer  "ship_weapon_slot_id"
    t.integer  "item_slot_id"
    t.integer  "rounds_fired"
    t.integer  "cargo_slot_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "armor_slots", force: :cascade do |t|
    t.integer  "armor_id"
    t.integer  "character_id"
    t.integer  "ammo_slot_id"
    t.integer  "item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "armors", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "ac"
    t.integer  "ac_bonus"
    t.integer  "damage_reduction"
    t.integer  "cost"
    t.integer  "tech_level"
    t.integer  "encumbrance"
    t.integer  "ammo_id"
    t.integer  "ammo_efficiency"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "assets", force: :cascade do |t|
    t.integer  "max_hp"
    t.string   "asset_type"
    t.string   "attribute_type"
    t.integer  "cost"
    t.integer  "upkeep"
    t.integer  "tech_level"
    t.integer  "asset_level"
    t.string   "attack_attribute"
    t.string   "defense_attribute"
    t.string   "attack_roll"
    t.string   "counter_roll"
    t.string   "special"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "attack_bonus_progressions", force: :cascade do |t|
    t.integer  "character_class_id"
    t.integer  "level"
    t.integer  "attack_bonus"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "background_skills", force: :cascade do |t|
    t.integer  "background_id"
    t.integer  "skill_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "backgrounds", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cargo_slots", force: :cascade do |t|
    t.integer  "ship_id"
    t.integer  "cargo_id"
    t.integer  "count"
    t.string   "notes"
    t.string   "gm_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cargos", force: :cascade do |t|
    t.integer  "item_id"
    t.string   "name"
    t.string   "description"
    t.string   "cost"
    t.string   "mass"
    t.string   "count"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "character_classes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "gm_notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer  "charater_class_id"
    t.integer  "level"
    t.integer  "hp"
    t.integer  "max_hp"
    t.integer  "pp"
    t.integer  "max_pp"
    t.integer  "xp"
    t.integer  "skill_points"
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.string   "notes"
    t.string   "gm_notes"
    t.integer  "player_id"
    t.integer  "homeworld_id"
    t.integer  "background_id"
    t.integer  "training_id"
    t.integer  "credits"
    t.integer  "system_strain"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "class_skills", force: :cascade do |t|
    t.integer  "character_class_id"
    t.integer  "skill_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "cyberware_slots", force: :cascade do |t|
    t.integer  "cyberware_id"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cyberwares", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "cost"
    t.integer  "system_strain"
    t.integer  "tech_level"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "evasion_save_progressions", force: :cascade do |t|
    t.integer  "character_class_id"
    t.integer  "level"
    t.integer  "evasion_save"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.integer  "x"
    t.integer  "y"
    t.integer  "planet_id"
    t.integer  "system_id"
    t.integer  "faction_id"
    t.integer  "player_id"
    t.integer  "npc_id"
    t.integer  "ship_id"
    t.integer  "fleet_id"
    t.string   "tags"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "game_id",    default: 0
  end

  create_table "faction_actions", force: :cascade do |t|
    t.integer  "faction_turn_id"
    t.boolean  "free"
    t.string   "action"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "faction_assets", force: :cascade do |t|
    t.boolean  "maintained"
    t.boolean  "disabled"
    t.integer  "asset_id"
    t.integer  "hp"
    t.integer  "faction_id"
    t.string   "gm_notes"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faction_attacks", force: :cascade do |t|
    t.integer  "attacker_id"
    t.integer  "defender_id"
    t.string   "attack_roll"
    t.string   "defense_roll"
    t.integer  "attack"
    t.integer  "defense"
    t.boolean  "counter"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "faction_tags", force: :cascade do |t|
    t.integer  "faction_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faction_turns", force: :cascade do |t|
    t.integer  "turn_number"
    t.integer  "game_id"
    t.integer  "order"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "factions", force: :cascade do |t|
    t.integer  "xp"
    t.string   "name"
    t.integer  "planet_id"
    t.integer  "force"
    t.integer  "cunning"
    t.integer  "wealth"
    t.integer  "faccreds"
    t.integer  "goal_id"
    t.integer  "goal_progress"
    t.integer  "goal_requirement"
    t.integer  "user_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "game_id",          default: 0
  end

  create_table "fleet_ships", force: :cascade do |t|
    t.integer  "ship_id"
    t.integer  "fleet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fleets", force: :cascade do |t|
    t.integer  "system_id"
    t.integer  "planet_id"
    t.integer  "poi_id"
    t.integer  "faction_id"
    t.integer  "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.integer  "sector_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_slots", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "character_id"
    t.integer  "uses"
    t.string   "notes"
    t.string   "gm_notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cost"
    t.integer  "encumberance"
    t.integer  "tech_level"
    t.integer  "uses"
    t.string   "gm_notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "level_progressions", force: :cascade do |t|
    t.integer  "character_class_id"
    t.integer  "level"
    t.integer  "xp_requirement"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "planet_id"
    t.integer  "satellite_id"
    t.integer  "poi_id"
    t.string   "name"
    t.string   "description"
    t.string   "gm_notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "luck_save_progressions", force: :cascade do |t|
    t.integer  "character_class_id"
    t.integer  "level"
    t.integer  "luck_save"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "mental_save_progressions", force: :cascade do |t|
    t.integer  "character_class_id"
    t.integer  "level"
    t.integer  "mental_save"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "npcs", force: :cascade do |t|
    t.string   "name"
    t.integer  "character_id"
    t.integer  "faction_id"
    t.integer  "planet_id"
    t.integer  "location_id"
    t.integer  "satellite_id"
    t.integer  "poi_id"
    t.integer  "ship_id"
    t.string   "notes"
    t.string   "gm_notes"
    t.string   "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "game_id",      default: 0
  end

  create_table "orbits", force: :cascade do |t|
    t.integer  "distance"
    t.float    "period"
    t.float    "angle"
    t.integer  "index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physical_save_progressions", force: :cascade do |t|
    t.integer  "character_class_id"
    t.integer  "level"
    t.integer  "physical_save"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "planet_tags", force: :cascade do |t|
    t.integer  "planet_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planets", force: :cascade do |t|
    t.integer  "x"
    t.integer  "y"
    t.string   "name"
    t.integer  "atmosphere"
    t.integer  "temperature"
    t.integer  "biosphere"
    t.integer  "tech_level"
    t.integer  "population"
    t.integer  "type_index"
    t.string   "description"
    t.string   "gm_notes"
    t.string   "image_src"
    t.integer  "orbit_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pois", force: :cascade do |t|
    t.string   "name"
    t.integer  "description"
    t.integer  "orbit_id"
    t.string   "gm_notes"
    t.string   "image_src"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "psi_discipline_slots", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "psi_discipline_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "psi_disciplines", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cost"
    t.integer  "system_strain"
    t.string   "attack"
    t.string   "defense"
    t.integer  "level"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "readied_item_slots", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "item_slot_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "satellites", force: :cascade do |t|
    t.integer  "x"
    t.integer  "y"
    t.integer  "planet_id"
    t.integer  "poi_id"
    t.integer  "orbit_id"
    t.string   "description"
    t.string   "name"
    t.string   "gm_notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sectors", force: :cascade do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "height"
    t.string   "image_src"
    t.integer  "seed"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "game_id",    default: 0
  end

  create_table "ship_armor_slots", force: :cascade do |t|
    t.integer  "ship_armor_id"
    t.integer  "ship_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ship_armors", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cost"
    t.integer  "power"
    t.integer  "mass"
    t.integer  "min_hull_class"
    t.integer  "tech_level"
    t.integer  "ac_bonus"
    t.integer  "ac"
    t.integer  "speed_penalty"
    t.integer  "ap_reduction"
    t.integer  "evasion_chance"
    t.integer  "phase_reduction"
    t.integer  "bonus_hp"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "ship_fitting_slots", force: :cascade do |t|
    t.integer  "ship_fitting_id"
    t.integer  "ship_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "ship_fittings", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cost"
    t.integer  "power"
    t.integer  "mass"
    t.integer  "min_hull_class"
    t.integer  "max_hull_class"
    t.integer  "tech_level"
    t.string   "notes"
    t.string   "gm_notes"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ship_hulls", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cost"
    t.integer  "max_hp"
    t.integer  "min_crew"
    t.integer  "max_crew"
    t.integer  "max_power"
    t.integer  "speed"
    t.integer  "armor"
    t.integer  "ac"
    t.integer  "max_mass"
    t.integer  "hardpoints"
    t.integer  "hull_class"
    t.string   "manufacturerer"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ship_shares", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "ship_id"
    t.integer  "shares"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ship_weapon_slots", force: :cascade do |t|
    t.integer  "ship_weapon_id"
    t.integer  "ship_id"
    t.integer  "ammo_slot_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ship_weapons", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cost"
    t.string   "damage"
    t.integer  "power"
    t.integer  "mass"
    t.integer  "hardpoint_use"
    t.integer  "min_hull_class"
    t.integer  "tech_level"
    t.integer  "ap"
    t.boolean  "clumsy"
    t.integer  "ammo_id"
    t.integer  "phase_rating"
    t.boolean  "cloud"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ships", force: :cascade do |t|
    t.integer  "hp"
    t.integer  "free_power"
    t.integer  "free_mass"
    t.integer  "ship_hull_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "skill_slots", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "background_id"
    t.integer  "training_id"
    t.integer  "skill_id"
    t.integer  "rank"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "gm_notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stowed_item_slots", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "item_slot_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "systems", force: :cascade do |t|
    t.integer  "x"
    t.integer  "y"
    t.string   "name"
    t.integer  "star_size"
    t.integer  "star_temperature"
    t.string   "description"
    t.string   "gm_notes"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "gm_notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "technology_save_progressions", force: :cascade do |t|
    t.integer  "character_class_id"
    t.integer  "level"
    t.integer  "technology_save"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "training_skills", force: :cascade do |t|
    t.integer  "training_id"
    t.integer  "skill_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vehicle_slots", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.integer  "hp"
    t.integer  "character_id"
    t.integer  "ship_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cost"
    t.integer  "speed"
    t.integer  "armor"
    t.integer  "max_hp"
    t.integer  "max_crew"
    t.integer  "tech_level"
    t.boolean  "heavy_armor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "weapon_slots", force: :cascade do |t|
    t.integer  "weapon_id"
    t.integer  "ammo_slot_id"
    t.integer  "character_id"
    t.integer  "vehicle_id"
    t.integer  "item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "attack_attribute"
    t.string   "damage"
    t.integer  "cost"
    t.integer  "range"
    t.integer  "ammo_efficiency"
    t.integer  "ammo_id"
    t.boolean  "long_reload"
    t.integer  "tech_level"
    t.boolean  "psitech"
    t.integer  "encumberance"
    t.boolean  "heavy_weapon"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
