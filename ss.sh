#!/bin/bash


# If we pass any arguments...
if [ $# -gt 0 ]; then
	
	# Organise CSS components function
	if [ "$1" == "css" ]; then
		shift 1
		echo "*** Creating styles folder in stylesheets directory ***"
		mkdir app/assets/stylesheets/styles
		echo "*** Generating sass files ***"
		touch app/assets/stylesheets/styles/ _00_fontface.sass app/assets/stylesheets/styles/_00_variables.sass app/assets/stylesheets/styles/_10_layout.sass app/assets/stylesheets/styles/_10_typography.sass app/assets/stylesheets/styles/_20_animations.sass app/assets/stylesheets/styles/_20_buttons.sass app/assets/stylesheets/styles/_20_icons.sass app/assets/stylesheets/styles/_20_links.sass app/assets/stylesheets/styles/_30_footer.sass app/assets/stylesheets/styles/_30_nav.sass app/assets/stylesheets/styles/_40_home.sass
		echo "*** Converting application.css file to a sass file ***"
		mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.sass
		echo "*** Import newly generated sass files into application.css.sass ***"
		printf "\n@import './styles/*'" >> app/assets/stylesheets/application.css.sass
		echo "*** All done, baby. ***"

	# Run rails db:drop db:create db:migrate db:seed
	elif [ "$1" == "rdb" ]; then
		shift 1
		echo "*** Dropping the database ***"
		rails db:drop
		echo "*** Creating the database ***"
		rails db:create
		echo "*** Migrating the database ***"
		rails db:migrate
		echo "*** Seeding the database ***"
		rails db:seed
		echo "*** Oh yeah, we good. ***"
	
	else
		echo "*** Not working ***"
	fi


else
	echo "No function selected"
fi
