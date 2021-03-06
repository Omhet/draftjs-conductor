#!/usr/bin/env bash
# Format and re-stage fully staged files only.

if [ -n "$JS_FULLY_STAGED" ];
then
  npx prettier --write $JS_FULLY_STAGED
  git add $JS_FULLY_STAGED
fi

if [ -n "$JS_STAGED" ];
then
    npx prettier --check $JS_STAGED
fi

if [ -n "$CSS_FULLY_STAGED" ];
then
  npx prettier --write $CSS_FULLY_STAGED
  git add $CSS_FULLY_STAGED
fi

if [ -n "$CSS_STAGED" ];
then
    npx prettier --check $CSS_STAGED
fi

if [ -n "$MD_FULLY_STAGED" ];
then
  npx prettier --write $MD_FULLY_STAGED
  git add $MD_FULLY_STAGED
fi

if [ -n "$MD_STAGED" ];
then
  npx prettier --check $MD_STAGED
fi

if [ -n "$JSON_FULLY_STAGED" ];
then
  npx prettier --write $JSON_FULLY_STAGED
  git add $JSON_FULLY_STAGED
fi

if [ -n "$JSON_STAGED" ];
then
  npx prettier --check $JSON_STAGED
fi

if [ -n "$YAML_FULLY_STAGED" ];
then
  npx prettier --write $YAML_FULLY_STAGED
  git add $YAML_FULLY_STAGED
fi

if [ -n "$YAML_STAGED" ];
then
  npx prettier --check $YAML_STAGED
fi

if [ -n "$HTML_FULLY_STAGED" ];
then
  npx prettier --write $HTML_FULLY_STAGED
  git add $HTML_FULLY_STAGED
fi

if [ -n "$HTML_STAGED" ];
then
  npx prettier --check $HTML_STAGED
fi
