#!/bin/bash
# Copied from here: 
#   https://gist.github.com/maxim/6e15aa45ba010ab030c4?permalink_comment_id=3356619#gistcomment-3356619
#
# This script downloads the first asset from the latest Github release of a
# private repo. 
#
# PREREQUISITES
#
# curl, jq
#
# USAGE
#
# Set owner and repo variables inside the script, make sure you chmod +x it.
#
#     ./download.sh "--GITHUB TOKEN HERE--"
#

# Define variables
echo "---------------------------------------------------------------------"
echo "Define variables"
echo "---------------------------------------------------------------------"

owner='sohmc'
repo='tauron-user-CA'
GITHUB_API_TOKEN='--CHANGE_ME--'
GH_API='https://api.github.com'
GH_REPO="$GH_API/repos/$owner/$repo"
GH_LATEST="$GH_REPO/releases/latest"
AUTH="Authorization: Bearer $GITHUB_API_TOKEN"

# Read asset name and id
echo "---------------------------------------------------------------------"
echo "Read asset name and id"
echo "---------------------------------------------------------------------"

response=$(curl -sH "$AUTH" $GH_LATEST)
id=`echo "$response" | jq '.assets[0] .id' |  tr -d '"'`
name=`echo "$response" | jq '.assets[0] .name' |  tr -d '"'`
GH_ASSET="$GH_REPO/releases/assets/$id"

# Print Details
echo "---------------------------------------------------------------------"
echo "Print Details"
echo "Assets Id: $id"
echo "Name: $name"
echo "Assets URL: $GH_ASSET"
echo "---------------------------------------------------------------------"

# Downloading asset file
echo "---------------------------------------------------------------------"
echo "Downloading asset file"
echo "---------------------------------------------------------------------"
curl -v -L -o "$name" -H "$AUTH" -H 'Accept: application/octet-stream' "$GH_ASSET"


# Installing File
echo "---------------------------------------------------------------------"
echo "Installing CRL"
echo "---------------------------------------------------------------------"

echo "Bringing down nginx"
docker compose down nginx

echo "Removing existing cert..."
rm "./nginx/conf.d/authentication_certs/$name"

echo "Moving new cert..."
mv "$name" ./nginx/conf.d/authentication_certs/

echo "Bringing up nginx"
docker compose up -d nginx

echo "Inspecting cert"
openssl crl -in ./nginx/conf.d/authentication_certs/$name -noout -text

