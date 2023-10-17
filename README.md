# Force Samsung Soundbar Mode Docker

The Samsung Q990B/Q995B Soundbar has the tendency to switch to Game Mode when switching HDMI inputs but never to return to the original sound mode. This Docker container fixes this by brute force. It will run forever and will switch back to Adaptive Mode every two seconds.

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
