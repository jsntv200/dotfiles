# Sourced from yadr
# https://github.com/skwp/dotfiles

require 'rake'

desc "Hook our dotfiles into system-standard positions."
task :install do
  puts
  puts "======================================================"
  puts "Dotfile Installation. I'll ask you a few"
  puts "questions about which files to install. Nothing will"
  puts "be overwritten without your consent."
  puts "======================================================"
  puts

  # this has all the runcoms from this directory.
  file_operation(Dir.glob('ag/*'))
  file_operation(Dir.glob('git/*'))
  file_operation(Dir.glob('ruby/*'))
  file_operation(Dir.glob('vim'))
  file_operation(Dir.glob('vim/vimrc'))

  install_fonts if RUBY_PLATFORM.downcase.include?("darwin")

  success_msg("installed")
end

task :default => 'install'

private

  def run(cmd)
    puts
    puts "[Installing] #{cmd}"
    `#{cmd}` unless ENV['DEBUG']
  end

  def install_fonts
    puts "======================================================"
    puts "Installing patched fonts for Powerline."
    puts "======================================================"
    run %{ cp -f $HOME/.dotfiles/fonts/* $HOME/Library/Fonts }
    puts
  end

  def file_operation(files, method = :symlink)
    skip_all = true
    overwrite_all = false
    backup_all = false

    files.each do |f|
      file = f.split('/').last
      source = "#{ENV["PWD"]}/#{f}"
      target = "#{ENV["HOME"]}/.#{file}"

      puts "--------"
      puts "file:   #{file}"
      puts "source: #{source}"
      puts "target: #{target}"
      puts ""

      if File.exists?(target) || File.symlink?(target)
        unless skip_all || overwrite_all || backup_all
          puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
          case STDIN.gets.chomp
          when 'o' then overwrite = true when 'b' then backup = true
          when 'O' then overwrite_all = true
          when 'B' then backup_all = true
          when 'S' then skip_all = true
          end
        end
        FileUtils.rm_rf(target) if overwrite || overwrite_all
        run %{ mv "$HOME/.#{file}" "$HOME/.#{file}.backup" } if backup || backup_all
      end

      if method == :symlink
        run %{ ln -s "#{source}" "#{target}" }
      else
        run %{ cp -f "#{source}" "#{target}" }
      end
    end
  end

  def success_msg(action)
    puts ""
    puts "Dotfiles have been #{action}. Please restart your terminal and vim."
  end
