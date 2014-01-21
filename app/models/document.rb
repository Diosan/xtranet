class Document < ActiveRecord::Base
  belongs_to :promotion
  mount_uploader :file, DocumentUploader
end
