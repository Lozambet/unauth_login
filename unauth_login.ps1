# CONFIGURA QUI I TUOI DATI
$EmailFrom = ""
$EmailTo = ""
$SMTPServer = "smtp.gmail.com"
$SMTPPort = 587
$Username = ""
$SecurePassword = ConvertTo-SecureString "" -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($Username, $SecurePassword)

# MESSAGGIO
$Subject = "ATTENZIONE! QUALCUNO STA UTILIZZANDO IL TUO UTENTE ⚠️"
$Body = "Dispositivo Paperella-23 sbloccato nell'utente '' alle ore $(Get-Date -Format 'HH:mm:ss') del $(Get-Date -Format 'dd/MM/yyyy')"

# INVIO
Send-MailMessage -From $EmailFrom -To $EmailTo -Subject $Subject -Body $Body -SmtpServer $SMTPServer -Port $SMTPPort -UseSsl -Credential $Credential