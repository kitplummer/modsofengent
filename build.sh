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
 people/msee_culture.md \
 process/msee_process.md \
 process/msee_process_supply-chain.md \
 process/msee_process_waterfall.md \
 process/msee_process_agile.md \
 process/msee_process_technical-debt.md \
 process/msee_process_architecture.md \
 process/msee_process_continuous-delivery.md \
 process/msee_process_development.md \
 process/msee_process_audit.md \
 technology/msee_technology.md \
 technology/msee_technology_enterprise-wide.md \
 technology/msee_technology_project-specific.md \
 practices/msee_practices.md
