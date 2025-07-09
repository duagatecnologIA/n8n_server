#!/bin/bash

echo "📂 Posicionándose en el directorio del proyecto..."
cd ~/n8n-server || exit

echo "🔍 Verificando cambios..."
git status

echo "➕ Agregando todos los cambios..."
git add .

echo "📝 Escribe el mensaje del commit:"
read -r mensaje

if [ -z "$mensaje" ]; then
  echo "❌ Error: El mensaje de commit no puede estar vacío."
  exit 1
fi

echo "✅ Haciendo commit..."
git commit -m "$mensaje"

echo "🚀 Haciendo push a GitHub..."
git push

echo "✅ Repositorio actualizado exitosamente."
