require "objective_model/version"
require 'fileutils'

module ObjectiveModel
  def self.transform_json json, path
    FileUtils.touch ['model.h', 'model.m']
  end
end
