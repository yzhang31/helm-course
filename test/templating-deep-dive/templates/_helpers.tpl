{{- define "templating-deep-dive.fullname" -}}
{{- $defaultlName := printf "%s-%s" .Release.Name .Chart.Name}}
{{- .Values.customName | default $defaultlName | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{- define "templating-deep-dive.selectorLabels" -}}
app: {{ .Chart.Name }}
release: {{ .Release.Name }}
managed-by: "helm"
{{- end -}}
