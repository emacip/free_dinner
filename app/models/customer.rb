class Customer < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks


  after_commit on: [:create] do
    __elasticsearch__.index_document
  end

  def as_indexed_json(options={})
    {
        name: name,
        location: "#{latitude}, #{longitude}"
    }
  end

end
