To setup VS code to work on remote machine need to add in remote settings.json

@ext:rust-lang.rust-analyzer
Remote(SSH:...) -> runnables -> Extra Env -> Edit in settings.json
{
    "lldb.cargo": "/home/m/.cargo/bin/cargo",
    "rust-analyzer.runnables.extraEnv": {"PATH": "/home/m/.cargo/bin"}
}
