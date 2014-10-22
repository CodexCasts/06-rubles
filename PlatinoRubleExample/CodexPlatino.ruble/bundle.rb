require 'ruble'

bundle do |bundle|
  bundle.display_name = 'Codex Platino'
  bundle.author = 'Andrew McElroy & John Gould'
  bundle.repository = "git://github.com/CodexLabs/CodexPlatino.ruble.git"
  bundle.copyright = <<END
(c) Copyright 2014 Codex Labs, LLC. Distributed under MIT license.
END
  


  bundle.description = t(:bundle_description)

  # uncomment with the url to the git repo if one exists
  # bundle.repository = 'git@github.com:username/repo-name.git'

  # Use Commands > Bundle Development > Insert Bundle Section > Menu
  # to easily add new sections
  bundle.menu 'Codex Platino' do |menu|
    menu.separator
    menu.menu 'Game Loops' do |sub_menu|
        sub_menu.command 'Basic Game Loop'
    end
  end
  
  project_template t(:codex_platino_application) do |t|
    t.type = :titanium_mobile
    t.location = "staging/CodexPlatino.zip"
  	t.natures = ["com.appcelerator.titanium.alloy.core.nature","com.appcelerator.titanium.mobile.nature"]
    t.description = t(:codex_platino_application_desc)
    t.tags = ['Codex Platino', 'Alloy']
    t.icon = "staging/platino-codex-enhanced.png" 
  end
end