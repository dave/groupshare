
CONFIG=groupshare

deploy:
	gcloud app deploy --configuration ${CONFIG} --quiet

logs:
	gcloud app logs tail -s default --configuration ${CONFIG}