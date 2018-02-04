class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
    files = files.select do |file|
      file[-4..-1] == ".mp3"
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
