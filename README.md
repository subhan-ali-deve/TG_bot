# BuilderzBot — OpenClaw Configuration

AI-powered Telegram bot for **Builderz.dev** internal team. Manages Linear workspace and answers Builderz-related questions — all through Telegram chat.

---

## What It Does

- Perform Linear app actions via Telegram chat
- Role-based authentication and authorization via Supabase
- Answer Builderz.dev related questions from knowledge base

---

## Project Structure
```
.openclaw/
├── skills/
│   ├── linear.md          # Linear app actions + auth instructions
│   └── supabase-kb/
│       └── skill.md       # Builderz.dev knowledge base instructions
└── openclaw.json          # OpenClaw gateway configuration
```

---

## Skills

### linear.md
Handles all Linear workspace actions via Linear GraphQL API:
- Issue management (create, update, delete, assign, label, comment)
- Project management (create, update, archive, add members)
- Team and member management
- Role-based auth — every action is verified against Supabase before executing

### skill.md
Handles Builderz.dev related questions by:
- Querying Supabase knowledge base
- Scraping relevant page URLs for live content
- Returning refined answers to user

---

## Authentication & Authorization

Every Telegram message is verified before any Linear action:
```
User sends message
      ↓
Check users table in Supabase → exists?
      NO  → "Access denied. You are not registered."
      YES → get role
      ↓
Check role_permissions table → action allowed?
      NO  → "Access denied. Your role cannot perform this action."
      YES → perform action
```

**Three roles:** `admin` `manager` `employee`

---

## Requirements

- OpenClaw installed and running
- Telegram bot token from @BotFather
- Supabase project with auth tables
- Linear API key and Team ID
- VPN (required in regions where Telegram is blocked)

---

## Configuration

Add to `openclaw.json`:
```json
{
  "channels": {
    "telegram": {
      "enabled": true,
      "botToken": "YOUR_BOT_TOKEN",
      "dmPolicy": "allowlist",
      "allowFrom": [YOUR_TELEGRAM_ID]
    }
  }
}
```

---

## Adding New Users
```sql
INSERT INTO users (telegram_id, name, email, role) VALUES
('TELEGRAM_ID', 'Full Name', 'email@example.com', 'employee');
```

Get Telegram ID → message `@userinfobot` on Telegram.

---

## Start Gateway
```bash
openclaw gateway start
```

---

## Contact

Builderz.dev · hello@builderz.dev
