namespace :db do
  namespace :seed do
    Dir[Rails.root.join('db', 'seeds', '*.rb')].each do |filename|
      taskname = File.basename(filename, '.rb').intern    
      task taskname => :environment do
        if File.exist?(filename)
          load(filename)
        end
      end
    end
  end
end
