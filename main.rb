# frozen_string_literal: true

$LOAD_PATH << File.join(__dir__, 'helpers')
require 'autoload'

library = Library.new

at_exit do
  library.data_save
end

# library.data_load
# library.data_save
# library.generate_data
# library.show_statistic
