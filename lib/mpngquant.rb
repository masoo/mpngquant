require "mpngquant/version"
require "pathname"
require "open3"

module Mpngquant
  class Error < StandardError; end

  class Pngquant
    class << self
      def optimize(infile:, force: nil, skip_if_larger: nil,
        ext: nil, quality: nil, speed: nil, nofs: nil,
        posterize: nil, strip: nil, verbose: nil)

        pngquant = "pngquant"
        unless quality.nil?
          parsed_quality = ["--quality", quality]
        end
        unless speed.nil?
          parsed_speed = ["--speed", Integer(speed).to_s]
        end
        parsed_infile = Pathname(infile).cleanpath.to_s unless infile.nil?
        File.open(parsed_infile) do |f|
          read_infile = f.read
          arg = [pngquant, parsed_quality, parsed_speed, "-"].select { |v| !v.nil? }.flatten!
          Open3.capture2(*arg, :stdin_data => read_infile)
        end
      end
    end
  end
end
