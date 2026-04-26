#!/bin/sh

# ###########################
# GitHub CLI usefull commands
# ###########################


## MANAGING REPOSITORIES

authenticate_with_gh_account () {
	gh auth login
}

verify_authentication_status () {
	gh auth status
}

view_available_commands_and_options () {
	gh help
}

create_a_repository () {
	gh repo create
}

non-interactive_setup () {
	gh repo create my-project \
		--public \
		--source=. \
		--push
}

clone_repository () {
	gh repo clone owner/repo-name
}

view_repository_info () {
	gh repo view
}

delete_repository () {
	gh repo delete owner/repo-name
}


## WORKING WITH ISSUES

create_new_issue () {
	gh issue create
}

non-interactive_issue_creation () {
	gh issue create \
		--title "Bug: crash on save" \
		--body "Steps to reproduce..." \
		--label bug
}

list_issues () {
	gh issue list
}
