require "active_support"
require "active_support/core_ext"
require "class_name/railtie"
require "class_name/configuration"
require "class_name/helper"
require "class_name/number_converter"

module ClassName
  include ClassName::Helper
end

ActiveSupport.on_load(:action_view) do
  include ClassName
end

