require('rust-tools').setup {
    server = {
        settings = {
            ['rust-analyzer'] = {
                check = {
                    overrideCommand = { 'python3', 'x.py', 'check', '--json-output' },
                },
                rustfmt = {
                    overrideCommand = { './build/x86_64-unknown-linux-gnu/stage0/bin/rustfmt', '--edition=2021' },
                },
                procMacro = {
                    server = './build/x86_64-unknown-linux-gnu/stage0/libexec/rust-analyzer-proc-macro-srv',
                    enable = true,
                },
                -- procMacro = { enable = false },
                cargo = {
                    buildScripts = {
                        enable = true,
                        invocationLocation = 'root',
                        invocationStrategy = 'once',
                        overrideCommand = { 'x', 'check', '--json-output' },
                    },
                    sysroot = './build/x86_64-unknown-linux-gnu/stage0-sysroot',
                },
                rustc = { source = './Cargo.toml' },
            },
        },
    },
}
