
CONFIG=groupshare
PROJECT=groupshare

deploy:
	make gcloud
	gcloud app deploy --configuration ${CONFIG} --quiet
	make default

gcloud:
	cp ../go.mod.gcloud ../go.mod

default:
	cp ../go.mod.default ../go.mod

logs:
	gcloud app logs tail -s default --configuration ${CONFIG}

store:
	gcloud beta emulators firestore start --host-port=127.0.0.1:8081

clear: export FIRESTORE_EMULATOR_HOST =
clear:
	firebase firestore:delete --all-collections --project ${PROJECT}

build:
	flutter pub run build_runner watch --delete-conflicting-outputs