#!/bin/bash

source VERSION

pandoc \
 --template modsofengent.latex \
 -V geometry:margin=1in \
 -f markdown -s \
 -o modern_software_engineering_enterprise-$VERSION.pdf \
 --toc \
 -S \
 title.txt \
 msee_cover.md \
 VERSION \
 msee_license.md \
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
