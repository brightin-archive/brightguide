module Brightguide
  module Parser
    def self.all
      file_paths.map do |file_path|
        {
          name: File.basename(file_path, ".*"),
          sections: parse_file(file_path),
          folder_name: folder_name(file_path)
        }
      end
    end

    def self.file_paths
      Dir.glob(Rails.root.join(Brightguide.stylesheets_path, "**", "*")).select do |path|
        File.file?(path)
      end
    end

    def self.folder_name(file_path)
      File.dirname(file_path).remove("#{Rails.root.join(Brightguide.stylesheets_path)}/")
    end

    def self.parse_file(file_path)
      [].tap do |result|
        File.open(file_path, "r") do |file|
          documentation = false
          file.each_line do |line|
            documentation = false if line.starts_with?("*/")
            result.last << line if documentation
            if line.starts_with?("/* doc")
              documentation = true
              result << ""
            end
          end
        end
      end
    end
  end
end
