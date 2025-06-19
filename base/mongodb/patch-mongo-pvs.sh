#!/bin/bash

echo "🔍 Searching for Released MongoDB PVs..."

# Find PVs in 'Released' state with name matching MongoDB PVCs
pvs=$(kubectl get pv -o jsonpath='{range .items[*]}{.metadata.name}{"\t"}{.status.phase}{"\t"}{.spec.claimRef.name}{"\n"}{end}' | grep 'mongo-pvc-mongo' | grep 'Released' | cut -f1)

if [ -z "$pvs" ]; then
  echo "✅ No Released MongoDB PVs found. All good!"
  exit 0
fi

echo "🔧 Patching the following PVs:"
echo "$pvs"

for pv in $pvs; do
  echo "➡️  Patching PV: $pv"
  kubectl patch pv "$pv" --type=merge -p '{"spec":{"claimRef": null}}'
done

echo "✅ Done. You can now recreate your PVCs and StatefulSet."
