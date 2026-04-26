#!/bin/sh

# ##########################################
# 1.6 GETTING STARTED - FIRST-TIME GIT SETUP
# ##########################################


view_settings_and_their_origin () {
	git config \
		--list \
		--show-origin
}

set_global_user_name () {
	git config \
		--global \
		user.name "John Doe"
}

set_global_email () {
	git config \
		--global \
		user.email john@doe.com
}

override_name_and_email_for_specific_project () {
	git config user.name "Jenny Doe"
	git config user.email jenny@doe.com
}

set_editor () {
	git config \
		--global \
		core.editor vim
}

set_default_branch_name () {
	# Here the name is 'main'
	git config \
		--global \
		init.defaultBranch main
}

view_specific_config_value () {
	git config user.email
}


# ##############################
# GETTING STARTED - GETTING HELP
# ##############################


view_manpage () {
	git help VERB
	git VERB --help
	man git-VERB
}

view_concise_help () {
	git VERB -h
}
