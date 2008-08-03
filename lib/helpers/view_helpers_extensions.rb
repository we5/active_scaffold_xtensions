module ActiveScaffold
  module Helpers
    module ViewHelpers
      
      def column_class(column, column_value)
        classes = []
        classes << "#{column.name}-column"
        classes << column.css_class unless column.css_class.nil?
        classes << 'empty' if column_empty? column_value
        classes << 'sorted' if active_scaffold_config.list.user.sorting.sorts_on?(column)
        classes << 'numeric' if column.column and [:decimal, :float, :integer].include?(column.column.type)
        classes << 'boolean' if column.column and column.column.type == :boolean
        classes.join(' ')
      end
    end
  end
end