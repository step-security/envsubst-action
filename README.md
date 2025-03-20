# Envsubst Action 

This action allows you to substitute environment variables in a file.

## Usage

template.json
```json
{
  "version": "${VERSION}",
  "instance": "${INSTANCE}"
}
```

.github/workflows/pipeline.yaml
```yaml
- uses: step-security/envsubst-action@v1
  env:
      VERSION: 1.2.3
      INSTANCE: staging
  with:
    input: template.json
    output: deployment.json
```


deployment.json
```json
{
  "version": "1.2.3",
  "instance": "staging"
}
```
