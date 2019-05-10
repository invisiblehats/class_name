module ClassName
  module Helper
    #
    # Conditionally joins a set of CSS class names into a single string
    #
    # @param css_map [Hash] a mapping of CSS class names to boolean values
    # @return [String] a combined string of CSS classes where the value was true
    # @example Create a css string from a complex object
    #   class_name(
    #     "base",
    #     "carl-the-fog",
    #     hidden: article.has_chart?,
    #     [:foo, :bar] => false,
    #     [:foobar] => true
    #   )
    #   => "base carl-the-fog foobar"
    #
    # read more about this [module](http://www.carlosramireziii.com/a-cleaner-way-to-set-multiple-conditional-css-classes-for-link-to.html)
    #
    def class_name(*css_map)
      classes = []
      css_map.flatten.reject(&:blank?).each do |css, bool|
        puts "#{css.class.to_s}: #{css.inspect} #{bool.inspect}"
        case css.class.to_s
        when "Integer"
          classes << ClassName::NumberConverter.to_word(css)
        when "String"
          classes << css
        when "Array"
          classes << css.join(" ")
        when "Hash"
          css.each do |hash_css, bool|
            classes << hash_css if bool
          end
        end
      end

      classes.join(" ")
    end
  end
end
