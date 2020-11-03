### Creating a service account

```
gcloud config set project groupshare
gcloud iam service-accounts create groupshare-service-account
gcloud projects add-iam-policy-binding groupshare --member "serviceAccount:groupshare-service-account@groupshare.iam.gserviceaccount.com" --role "roles/owner"
gcloud iam service-accounts keys create ~/.credentials/groupshare-service-account.json --iam-account groupshare-service-account@groupshare.iam.gserviceaccount.com
```

Add to `~/.config/fish/config.fish`:
```
set -x GOOGLE_APPLICATION_CREDENTIALS ~/.credentials/groupshare-service-account.json
```

### Emulator

Start the datastore emulator:
```
gcloud beta emulators firestore start --host-port=127.0.0.1:8081
```

Add to `~/.config/fish/config.fish`:
```
set -x FIRESTORE_EMULATOR_HOST 127.0.0.1:8081
```