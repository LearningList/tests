module Extension
  def self.!(obj, mod)
    obj.extend mod unless obj.is_a? mod
    obj
  end

  def extension(mod)
    Extension.! self, mod
  end
end
