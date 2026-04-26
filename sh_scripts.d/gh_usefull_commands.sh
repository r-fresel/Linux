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

filter_issues () {
	gh issue list \
		--label bug \
		--state closed \
		--assignee @me
}

view_special_issue () {
	gh issue view ISSUE_NUMBER
}


# MANAGING PULL REQUESTS

create_pull_request () {
	gh pr create
}

non-interactive_pull_request () {
	gh pr create \
		--base main \
		--head feature-branch \
		--title "Add login form" \
		--body "Implements login with basic validation"
}

list_pull_requests () {
	gh pr list
}

filter_pull_request_list () {
	gh pr list \
		--state closed \
		--author username \
		--label enhancement
}

view_specific_pull_request () {
	gh pr view PR_NUMBER
}

check_pull_request_status () {
	gh pr status
}

merge_a_pull_request () {
	gh pr merge PR_NUMBER
}


# WORKING WITH GITHUB ACTIONS

list_workflows_runs () {
	gh run list
}

filter_workflows_runs_list () {
	gh run list \
		--branch main \
		--status failure
}

view_workflow_run_details () {
	gh run view RUN_ID
}

view_logs () {
	gh run view RUN_ID --log
}

re-run_a_workflow () {
	gh run rerun RUN_ID
}

re-run_latest_failed_run () {
	gh run rerun -failed
}


# CUSTOMIZE AND AUTOMATE

alias () {
	gh alias set myissues \
		'issue list --author @me --state open'
	gh myissues
}

view_aliases () {
	gh alias list
}

json_output () {
	gh pr list \
		--state open \
		--json title,author
}

format_output () {
	gh issue list \
		--json number,title \
		--jq '.[] | "\(.number): \(.title)"'

	# Usefull for shell scripts that:
	# - list PRs and issues
	# - parse them
	# - trigger CI/CD workflows
	# - auto-generate changelogs
}
