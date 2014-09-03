VERSION="0.0.1"
pandoc \
 --template modsofengent.latex \
 -V geometry:margin=1in \
 -o modern_software_engineering_enterprise-$VERSION.pdf \
 -f markdown \
 --toc \
 title.txt \
 msee_cover.md \
 msee_introduction.md \
 msee_executive-summary.md \
 msee_culture.md \
 msee_process.md \
 msee_process_supply-chain.md \
 msee_process_waterfall.md \
 msee_process_agile.md \
 msee_process_technical-debt.md \
 msee_process_architecture.md \
 msee_process_continuous-delivery.md \
 msee_process_development.md \
 msee_process_audit.md \
 msee_technology.md \
 msee_practices.md
