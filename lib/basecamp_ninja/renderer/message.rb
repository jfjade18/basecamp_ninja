module BasecampNinja; module Renderer; module Message
  include Representable::JSON

  property :id
  property :subject
  property :created_at
  property :updated_at
  property :content
  property :creator, class: BasecampNinja::Person, extend: Renderer::Person
  collection :attachments, class: BasecampNinja::Attachment, extend: Renderer::Attachment
  collection :comments, class: BasecampNinja::Comment, extend: Renderer::Comment
  collection :subscribers, class: BasecampNinja::Person, extend: Renderer::Person

  property :class_name, default: 'Message'
end; end; end