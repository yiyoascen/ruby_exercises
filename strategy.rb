# frozen_string_literal: true

# strategy design pattern example

# creates a report with two delegated formats
class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @title = 'Monthly report'
    @text = ['Things are going', 'really, really well.']
    @formatter = formatter
  end

  def output_report
    @formatter.output_report self
  end
end

# formats into HTML
class HTMLFormatter
  def output_report(context)
    puts '<html>'
    puts '    <head>'
    # output the rest of the report...

    puts "    <title>#{context.title}</title>"
    puts '    </head>'
    puts '    <body>'
    context.text.each do |line|
      puts "      <p>#{line}</p>"
    end
    puts '    </body>'
    puts '</html>'
  end
end

# formats into plain text
class PlainTextFormatter
  def output_report(context)
    puts "***** #{context.title} *****"
    context.text.each do |line|
      puts line
    end
  end
end
