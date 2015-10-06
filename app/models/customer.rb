class Customer < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks


  set_callback :create, :after do |document|
    document.__elasticsearch__.index_name = 'customers'
    document.__elasticsearch__.index_document
  end

  def as_indexed_json(options={})
    {
        name: name,
        location: [ latitude, longitude ]
    }
  end

end
