def prox_gem(gem_name, options={})
  opts = _options(gem_name, options)
  gem gem_name, opts
end

def _options(gem_name, options={})
  mode = _prox_gem_mode
  if mode == "path"
    return { :path => _file_system_path(gem_name) }
  elsif mode == "git"    
    return { :git => _git_path(gem_name, options) }.merge(options)
  elsif mode == 'off'
    return options
  else
    _print_mode_error && raise
  end
end

def _prox_gem_mode
  ENV['PROX_GEM_MODE'] || "off"
end

def _gem_dir
  ENV['PROX_GEM_DIR'] || (_print_gem_dir_error && raise)
end

def _prox_gem_git_uri
  ENV['PROX_GEM_GIT_URI'] || (_print_git_repo_uri_error && raise)
end

def _file_system_path(gem_name)
  File.join(File.expand_path(_gem_dir), gem_name)
end

def _git_path(gem_name, options)
  prefix = options.delete :prefix

  repo_name = gem_name.gsub '_', '-'

  path = "#{_prox_gem_git_uri}/"
  path << "#{prefix}/" if prefix
  path << "#{repo_name}.git"
end

def _print_mode_error(mode)
  puts "The PROX_GEM_MODE \"#{mode}\" environment variable is wrong. It must be one of \"path\", \"git\", or \"off\"."
end

def _print_gem_dir_error
  puts 'The PROX_GEM_DIR environment variable must be set to the path that contains gem project directories'
end

def _print_git_repo_uri_error
  puts 'The PROX_GEM_GIT_URI environment variable must be set to the URI of the Git repository where the gem project is housed'
end
