function backuptofu
    pushd ~/.local/share/tofu
    sqlite3 ~/.local/share/tofu/tofu.db ".backup tofu_backup.db"
    popd
end
