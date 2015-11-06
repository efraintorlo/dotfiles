cd () { builtin cd "$@" && chpwd; }
pushd () { builtin pushd "$@" && chpwd; }
popd () { builtin popd "$@" && chpwd; }

chpwd () {
if [[ -e .info ]]; then
    echo '>>>'
    cat .info
fi
}
