#!/bin/sh

set -e

gh_repo="libreoffice-style-elementary"
gh_desc="Elementary LibreOffice icon themes"

cat <<- EOF

  $gh_desc
  https://github.com/rizmut/$gh_repo
  
  
EOF

temp_dir="$(mktemp -d)"

cd "images_elementary"
zip -r -D images_elementary.zip *
mv "images_elementary.zip" \
  "./../build/"
cd "./../build/"
echo "=> Deleting old $gh_desc extension file ..."
rm -f "Elementary-IconSet.oxt"
echo "=> Create new $gh_desc extension one ..."
cp "images_elementary.zip" \
   "Elementary-IconSet/iconsets"
cd "./Elementary-IconSet"
zip -r -D Elementary-IconSet.oxt *
mv "Elementary-IconSet.oxt" \
   "./.."
cd "./../.."
echo "=> Deleting old $gh_desc ..."
sudo rm -f "/usr/share/libreoffice/share/config/images_elementary.zip"
echo "=> Installing ..."
sudo mkdir -p "/usr/share/libreoffice/share/config"
sudo mv \
  "build/images_elementary.zip" \
  "/usr/share/libreoffice/share/config"
for dir in \
  /usr/lib64/libreoffice/share/config \
  /usr/lib/libreoffice/share/config \
  /usr/local/lib/libreoffice/share/config \
  /opt/libreoffice*/share/config; do
  [ -d "$dir" ] || continue
  sudo ln -sf "/usr/share/libreoffice/share/config/images_elementary.zip" "$dir"
done
echo "=> Done!"
