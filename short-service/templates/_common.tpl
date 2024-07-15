# шаблон для подстановки env переменных

{{- define "env.template"}}
-  name: {{ .env }}
   valueFrom:
        secretKeyRef:
            name: "{{ .name }}-secret"
            key: {{ .env }}
{{- end}}