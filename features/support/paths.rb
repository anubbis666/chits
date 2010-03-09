module NavigationHelpers
  def path_to(page_name)
    "http://localhost/chits" +
    case page_name
    
    when /a page/
      '/'

    when /home page/
      '/'
    when /admin page/
      '/info/index.php?page=ADMIN'
    
    when /patient management form/
    	'/info/index.php?page=PATIENTS&menu_id=657'

    when /patient consult form/
    	'/info/index.php?page=CONSULTS&menu_id=1327'

    when /patient visit/
    	'/info/index.php?page=CONSULTS&menu_id=1327&consult_id=2&ptmenu=DETAILS'

    when /patient search/
    	'/info/index.php?page=CONSULTS&menu_id=1327&consult_id=5&ptmenu=DETAILS'

    when /maternal visit1/
	'/info/index.php?page=CONSULTS&menu_id=1327&consult_id=2&ptmenu=DETAILS&module=mc&mc=VISIT1'

    when /maternal prenatal/
	'/info/index.php?page=CONSULTS&menu_id=1327&consult_id=2&ptmenu=DETAILS&module=mc&mc=PREN&mc_id=2'

    when /maternal postpartum/
	'/info/index.php?page=CONSULTS&menu_id=1327&consult_id=2&ptmenu=DETAILS&module=mc&mc=POSTP&mc_id=2'
						      
    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
