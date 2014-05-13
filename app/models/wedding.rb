class Wedding
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :phoneNum, type: String
  field :partyNum, type: String
end
