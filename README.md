# force_samsung_soundbar_mode_docker

Adaption of https://gist.github.com/coolbho3k/e61f1c5529363fca595ef13a41aef9f8

## Docker Compose

```yaml
    samsung_soundbar_mode:
        build:
            context: /home/matze/work/force_samsung_soundbar_mode
        restart: unless-stopped
        container_name: samsung_soundbar_mode
        user: "1002"
        environment:
            - SOUNDBAR_DEVICE_ID=SEE_SCRIPT_TO_FETCH_THIS
            - BEARER_TOKEN=SEE_SCRIPT_TO_FETCH_THIS
```
