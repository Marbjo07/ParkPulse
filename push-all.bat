@echo off

for %%s in ("parkpulse-accessmanager" "parkpulse-api" "parkpulse-web" "nginx") do (
    echo %%s
    docker tag %%s parkpulsedocker.azurecr.io/%%s:v1.0.0
    docker push parkpulsedocker.azurecr.io/%%s:v1.0.0
)

@echo on