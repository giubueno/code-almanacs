#!/usr/bin/env ruby

require 'yaml'

class Config
  attr_reader :data, :env

  def self.config_path
    File.join('config', 'resources')
  end

  def initialize(opts)
    @env       = opts[:env].to_s
    @file_name = opts[:file_name].to_s
    @data      = YAML::load_file(File.join(self.class.config_path, @file_name))
    define_method_for_environment(@data[@env].keys)
  end

  private

  def define_method_for_environment(names)
    names.each do |name|
      self.class.class_eval <<-EOS
        def #{name}
          data[env]['#{name}']
        end
      EOS
    end
  end

end
