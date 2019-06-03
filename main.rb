# frozen_string_literal: true

$LOAD_PATH << File.join(__dir__, 'helpers')
require 'autoload'

library = Library.new

at_exit do
  library.save
end

# library.save
# library.data_fake
# library.generate_data
# library.show_statistic