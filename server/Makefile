
CONFIG=groupshare
PROJECT=groupshare
QUEUE=tasks

deploy:
	make gcloud
	gcloud app deploy --configuration ${CONFIG} --quiet
	make default

gcloud:
	cp ../go.mod.gcloud ../go.mod

default:
	cp ../go.mod.default ../go.mod

queue:
	gcloud tasks queues create ${QUEUE} --configuration ${CONFIG}

logs:
	gcloud app logs tail -s default --configuration ${CONFIG}

store:
	gcloud beta emulators firestore start --host-port=127.0.0.1:8081

clear: export FIRESTORE_EMULATOR_HOST =
clear:
	firebase firestore:delete --all-collections --project ${PROJECT}

build:
	flutter pub run build_runner build --delete-conflicting-outputs

watch:
	flutter pub run build_runner watch --delete-conflicting-outputs