# Ruby 3.2 removed Dir.exists? in favor of Dir.exist?
# Webpacker 4.3.0 still uses Dir.exists?
unless Dir.respond_to?(:exists?)
  def Dir.exists?(path)
    exist?(path)
  end
end
