# frozen_string_literal: true

module CreateSomething
  def create
    p 'created'
  end
end

module DestroySomething
  def destroy
    p 'destroyed'
  end
end

class CreateObject
  include CreateSomething
end

class DestroyObject
  include DestroySomething
end
