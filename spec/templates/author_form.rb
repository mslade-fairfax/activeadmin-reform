require 'reform'

class AuthorForm < Reform::Form
  property :last_name, validates: { presence: true }
  property :name

  def surname=(value)
    model.last_name = value
  end

  def surname
    model.last_name
  end
end
