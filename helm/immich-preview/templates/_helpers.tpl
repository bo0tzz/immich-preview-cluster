{{- define "immich-preview.fullnamePrefix" -}}
{{- if .Values.fullnamePrefixOverride }}
{{- .Values.fullnamePrefixOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Chart.Name .Release.Name }}
{{- end }}
{{- end }}

{{- define "immich-preview.instance" -}}
{{- .Release.Name }}
{{- end}}

{{- define "immich-preview.url" -}}
{{- if .Values.url }}
{{- .Values.url }}
{{- else }}
{{- printf "%s.preview.immich.app" .Release.Name }}
{{- end}}
{{- end}}
