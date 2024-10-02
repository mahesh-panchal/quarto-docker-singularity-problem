workflow {
    QUARTO().view()
}

process QUARTO {
    script:
    """
    export USERID=\$UID
    export XDG_CACHE_HOME=tmp/quarto_cache_home
    export XDG_DATA_HOME=tmp/quarto_data_home

    quarto check
    """

    output:
    stdout
}