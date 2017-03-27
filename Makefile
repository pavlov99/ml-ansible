.PHONY: help
# target: help - Display callable targets
help:
	@egrep "^# target:" [Mm]akefile | sed -e 's/^# target: //g'


.PHONY: install
# target: install - Install playbooks
install:
	ansible-galaxy install --force --role-file=requirements.yml
