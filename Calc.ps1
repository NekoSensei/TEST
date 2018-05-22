Clear-Host

Write-Host "----------------------------------------"
Write-Host "----------------------------------------"
Write-Host "Bienvenue sur la Calculatrice Powershell"
Write-Host "----------------------------------------"
Write-Host "----------------------------------------"


[int]$Nombre1 = Read-Host "Veuillez entrer un premier chiffre"
$Operateur = Read-Host "Veuillez entrer l'opérateur (+,-,*,/)"
[int]$Nombre2 = Read-Host "Veuillez entrer un second chiffre"

switch($operateur){
    "+" {
        $Nombre1 + $Nombre2
        }
    "-" {
        $Nombre1 - $Nombre2
        }
    "*" {
        $Nombre1 * $Nombre2
        }
    "/" {
        $Nombre1 / $Nombre2
        }
    default {
            Write-Host -ForegroundColor Red "Erreur: L'opération ne peut aboutir. Vérifiez votre opérateur !"
            }
}
