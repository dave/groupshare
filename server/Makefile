
CONFIG=groupshare

deploy:
	gcloud app deploy --configuration ${CONFIG} --quiet

logs:
	gcloud app logs tail -s default --configuration ${CONFIG}

store:
	gcloud beta emulators firestore start --host-port=127.0.0.1:8081