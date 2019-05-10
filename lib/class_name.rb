require "class_name/version"
require "class_name/configuration"
require "class_name/helper"

ActiveSupport.on_load(:action_view) do
  include ClassName::Helper
end
