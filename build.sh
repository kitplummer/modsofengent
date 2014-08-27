VERSION="0.0.1"
pandoc \
 -V geometry:margin=1in \
 -o modern_software_engineering_enterprise-$VERSION.pdf \
 -f markdown \
 msee_cover.md \
 msee_introduction.md \
 msee_executive-summary.md \
 msee_culture.md \
 msee_process.md \
 msee_technology.md \
 msee_practices.md
