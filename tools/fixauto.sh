#!/bin/bash

FILENAME=$1
MODIFY="-i"

# M-x replace-string new line with double in Emacs C-q C-j

# Armenian punctuation
sed ${MODIFY} "s/^-/—/g" "${FILENAME}"
sed ${MODIFY} "s/,-/,—/g" "${FILENAME}"
sed ${MODIFY} "s/\.-/\.—/g" "${FILENAME}"
sed ${MODIFY} "s/:/։/g" "${FILENAME}" 
sed ${MODIFY} "s/'/՚/g" "${FILENAME}"
sed ${MODIFY} "s/\.\.\./…/g" "${FILENAME}"

# remove space before puntuation
sed ${MODIFY} "s/ ,/,/g" "${FILENAME}"
sed ${MODIFY} "s/ \././g" "${FILENAME}"
sed ${MODIFY} "s/ »/»/g" "${FILENAME}"
sed ${MODIFY} "s/ ։/։/g" "${FILENAME}"

# formatting
sed ${MODIFY} "s/\//_/g" "${FILENAME}"
sed ${MODIFY} 's/\*\*\*/{{< asterism >}}/g' "${FILENAME}"

# remove double spaces
sed ${MODIFY} "s/  / /g" "${FILENAME}"

# check space after puntuation
#rg --color=auto '\.[ա-ֆԱ-Ֆ]' *
#rg --color=auto ',[ա-ֆԱ-Ֆ]' *
#rg --color=auto '։[ա-ֆԱ-Ֆ]' *

# check these
#rg --color=auto '  ' *
#rg --color=auto ',,' *
#rg --color=auto ' — ' *

# check capital after michnaged
#rg --color=auto '\. [Ա-Ֆ]' *

# check small after verchaged
#rg "։ [ա-ֆ]" *
#rg "^[ա-ֆ]" *
#rg "^— [ա-ֆ]" *

# 3 consecutive identical characters
#rg --pcre2 "([ա-ֆԱ-Ֆ])\1\1" *

#hunspell -d hy_AM_western "${FILENAME}"
