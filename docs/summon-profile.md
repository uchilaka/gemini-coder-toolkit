# `/summon-profile`

The `/summon-profile` skill allows you to synchronize your local Gemini CLI profile with a remote machine on your network. This is incredibly useful if you use the Gemini CLI on multiple workstations and want to quickly pull the latest custom skills, hooks, global instructions (`GEMINI.md`), and settings from your primary machine.

## How It Works

When activated, the skill will prompt you for the IP address or hostname of the remote machine. It will also ask for your SSH username (falling back to your current local user if not provided).

The skill executes a merge synchronization:
1. **Local Backup:** First, it creates a timestamped backup of your current local `~/.gemini/skills`, `~/.gemini/hooks`, `~/.gemini/GEMINI.md`, and `~/.gemini/settings.json` in `~/.gemini/backups/`.
2. **Remote Pull:** It uses `scp` to securely copy the contents from the remote machine to your local machine.
3. **Merge:** Existing local files with the same names will be overwritten by the remote versions, but any local-only files (like experimental skills) will remain intact.

## Usage

Activate the skill by typing:
```
/activate summon-profile
```

The agent will ask you for:
1. The remote host (e.g., `192.168.1.50` or `workstation.local`).
2. The remote username (optional).

The agent will then execute the transfer and confirm when it's complete.