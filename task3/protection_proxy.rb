# frozen_string_literal: true

# Реальний документ
class RealDocument
  def view
    puts 'Viewing the document'
  end
end

# Проксі для забезпечення обмеженого доступу
class ProtectedDocumentProxy
  def initialize(real_document, access_level)
    @real_document = real_document
    @access_level = access_level
  end

  def view
    if @access_level == 'admin'
      @real_document.view
    else
      puts 'Access denied'
    end
  end
end

real_document = RealDocument.new
admin_proxy = ProtectedDocumentProxy.new(real_document, 'admin')
user_proxy = ProtectedDocumentProxy.new(real_document, 'user')

# Адмін має доступ до перегляду документу
admin_proxy.view

# Звичайний користувач не має доступу
user_proxy.view
