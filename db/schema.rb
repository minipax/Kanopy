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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 8) do

  create_table "citizens", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "citizens", ["email"], :name => "index_citizens_on_email", :unique => true
  add_index "citizens", ["reset_password_token"], :name => "index_citizens_on_reset_password_token", :unique => true

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "problem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["problem_id"], :name => "index_comments_on_problem_id"

  create_table "kanopies", :force => true do |t|
    t.string   "name"
    t.integer  "kanopy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kanopies", ["kanopy_id"], :name => "index_kanopies_on_kanopy_id"

  create_table "post_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.integer  "citizen_id"
    t.integer  "solution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_type_id"
  end

  add_index "posts", ["citizen_id"], :name => "index_posts_on_citizen_id"
  add_index "posts", ["solution_id"], :name => "index_posts_on_solution_id"

  create_table "problems", :force => true do |t|
    t.string   "name"
    t.integer  "citizen_id"
    t.integer  "kanopy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "problems", ["citizen_id"], :name => "index_problems_on_citizen_id"
  add_index "problems", ["kanopy_id"], :name => "index_problems_on_kanopy_id"

  create_table "solutions", :force => true do |t|
    t.string   "name"
    t.integer  "comment_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "solutions", ["comment_id"], :name => "index_solutions_on_comment_id"

  create_table "votes", :force => true do |t|
    t.boolean  "vote",          :default => false
    t.integer  "voteable_id",                      :null => false
    t.string   "voteable_type",                    :null => false
    t.integer  "voter_id"
    t.string   "voter_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["voteable_id", "voteable_type"], :name => "index_votes_on_voteable_id_and_voteable_type"
  add_index "votes", ["voter_id", "voter_type", "voteable_id", "voteable_type"], :name => "fk_one_vote_per_user_per_entity", :unique => true
  add_index "votes", ["voter_id", "voter_type"], :name => "index_votes_on_voter_id_and_voter_type"

end
