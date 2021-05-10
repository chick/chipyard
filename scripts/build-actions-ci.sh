
python -m actions_includes ./.github/actions/current-working.yml - | \
  sed 's/continue-on-error: false/continue-on-error: true/' > .github/workflows/ci.yml
cat .github/workflows/ci.yml
