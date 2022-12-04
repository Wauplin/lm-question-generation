# Compute QAG score for QG model with gold answer

qag_metric () {
  MODEL=${1}
  DATA=${2}
  LA=${3}
  git clone "https://huggingface.co/lmqg/${MODEL}"
  lmqg-eval-qag --use-auth-token -m "lmqg/${MODEL}" -e "${MODEL}/eval" -d "${DATA}" --language "${LA}"
  lmqg-push-to-hf -m "${MODEL}" -a "${MODEL}" -o "lmqg"
}

# QG models
qag_metric 't5-small-squad' 'lmqg/qg_squad' "en"
qag_metric 't5-base-squad' 'lmqg/qg_squad' "en"
qag_metric 't5-large-squad' 'lmqg/qg_squad' "en"
qag_metric 'bart-base-squad' 'lmqg/qg_squad' "en"
qag_metric 'bart-large-squad' 'lmqg/qg_squad' "en"

qag_metric 'mt5-small-jaquad' 'lmqg/qg_jaquad' "ja"
qag_metric 'mt5-small-esquad' 'lmqg/qg_esquad' "es"
qag_metric 'mt5-small-dequad' 'lmqg/qg_dequad' "de"
qag_metric 'mt5-small-itquad' 'lmqg/qg_itquad' "it"
qag_metric 'mt5-small-koquad' 'lmqg/qg_koquad' "ko"
qag_metric 'mt5-small-ruquad' 'lmqg/qg_ruquad' "ru"
qag_metric 'mt5-small-frquad' 'lmqg/qg_frquad' "fr"

qag_metric 'mt5-base-jaquad' 'lmqg/qg_jaquad' "ja"
qag_metric 'mt5-base-esquad' 'lmqg/qg_esquad' "es"
qag_metric 'mt5-base-dequad' 'lmqg/qg_dequad' "de"
qag_metric 'mt5-base-itquad' 'lmqg/qg_itquad' "it"
qag_metric 'mt5-base-koquad' 'lmqg/qg_koquad' "ko"
qag_metric 'mt5-base-ruquad' 'lmqg/qg_ruquad' "ru"
qag_metric 'mt5-base-frquad' 'lmqg/qg_frquad' "fr"


qag_metric 'mbart-large-cc25-jaquad' 'lmqg/qg_jaquad' "ja"
qag_metric 'mbart-large-cc25-esquad' 'lmqg/qg_esquad' "es"
qag_metric 'mbart-large-cc25-dequad' 'lmqg/qg_dequad' "de"
qag_metric 'mbart-large-cc25-itquad' 'lmqg/qg_itquad' "it"
qag_metric 'mbart-large-cc25-koquad' 'lmqg/qg_koquad' "ko"
qag_metric 'mbart-large-cc25-ruquad' 'lmqg/qg_ruquad' "ru"
qag_metric 'mbart-large-cc25-frquad' 'lmqg/qg_frquad' "fr"
