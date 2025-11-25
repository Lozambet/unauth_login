```markdown
# unauth_login

Script PowerShell per invio automatico di email all'accesso utente.

## 🚀 Installazione

Clona il repository:

```bash
git clone https://github.com/username/unauth_login.git
cd unauth_login
```

## ⚙️ Configurazione

Apri il file **`unauth_login.ps1`** e imposta i parametri SMTP:

```powershell
$EmailFrom    = "tuo@email.com"
$EmailTo      = "destinatario@email.com"
$SMTPServer   = "smtp.gmail.com"
$SMTPPort     = 587
$Username     = "tuo@email.com"
$SecurePassword = ConvertTo-SecureString "LA_TUA_PASSWORD" -AsPlainText -Force
$Credential   = New-Object System.Management.Automation.PSCredential ($Username, $SecurePassword)
```

👉 Per generare una password sicura da usare con Gmail, consulta la guida ufficiale:  
[Come creare una password per le app](https://support.google.com/accounts/answer/185833)

Puoi personalizzare **oggetto** e **corpo** del messaggio direttamente nello script.

---

## 🔄 Automazione con Task Scheduler

1. Apri **Utilità di pianificazione** (Task Scheduler).
2. Crea una **Attività di base**.
3. Trigger: **All'accesso** → seleziona il tuo utente.
4. Azione: **Avvia programma** → punta a `Start.bat`.

Da questo momento, ogni volta che accedi, lo script verrà eseguito.

---

## ⚠️ Disclaimer

Questo progetto è fornito **solo a scopo dimostrativo e didattico**.  
Non sono responsabile di **uso improprio, violazioni di policy aziendali o leggi locali**.  
Se decidi di utilizzarlo, lo fai **a tuo rischio e pericolo**.  
Non voglio casini: se non sai cosa stai facendo, non usarlo.

---

## 📂 Struttura del repository

```
unauth_login/
├── unauth_login.ps1   # Script PowerShell da configurare
├── Start.bat          # Batch di avvio automatico
└── README.md          # Documentazione
```
