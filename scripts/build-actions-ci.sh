
# use python virtual env
# source ~/.virtualenvs/python-for-github-actions/bin/activate

MAIN_FILE=$1
python -m actions_includes $MAIN_FILE - | \
  sed 's/continue-on-error: false/continue-on-error: true/' > .github/workflows/ci.yml
cat .github/workflows/ci.yml
