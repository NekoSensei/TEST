[int]$PointCPU = "0"
[int]$PointUser = "0"

while($PointCPU -lt 3 -and $PointUser -lt 3)
{
    Clear-Host

    Write-Host "#####################################################################"
    Write-Host "#                                                                   #"
    Write-Host "#                     Bienvenue dans ChiFouMi                       #"
    Write-Host "#                                                                   #"
    Write-Host "#####################################################################"
    Write-Host " "
    Write-Host "Tableau des scores:"
    Write-Host "CPU : $PointCPU"
    Write-Host "USER : $PointUser"
    Write-Host " "
    Write-Host "------------"
    Write-Host "1 = Pierre"
    Write-Host "2 = Feuille"
    Write-Host "3 = Ciseaux"
    Write-Host "------------"
    Write-Host " "

    $Choix = @("","Pierre","Feuille","Ciseaux")

    Function ChoixCPU
    {
        [int]$Num1 = Get-Random -minimum 1 -maximum 4
        $var1 = $Choix[$Num1]
        return $var1
    }

    Function ChoixUser
    {
        [int]$Num2 = Read-Host "Votre choix"

        While($Num2 -gt 3)
        {
            Write-Host -ForegroundColor Red "Erreur: Choisissez un chiffre parmis les propositions"
            [int]$Num2 = Read-Host "Votre choix"
        }
        $var2 = $Choix[$Num2]
        return $var2
    }

    $User = ChoixUser
    $CPU = ChoixCPU

    Write-Host "User lance $User"
    Write-Host "CPU lance $CPU"

    If($User -like "Pierre")
    {
        If($CPU -like "Feuille")
        {
        Write-Host -ForegroundColor Red "PERDU !"
        $PointCPU++
        }
        elseif($CPU -like "Ciseaux")
        {
        Write-Host -ForegroundColor Green "GAGNE !"
        $PointUser++
        }
        else
        {
        Write-Host -ForegroundColor Yellow "EGALITE !"
        }
    }
    Elseif($User -like "Feuille")
    {
        If($CPU -like "Ciseaux")
        {
        Write-Host -ForegroundColor Red "PERDU !"
        $PointCPU++
        }
        elseif($CPU -like "Pierre")
        {
        Write-Host -ForegroundColor Green "GAGNE !"
        $PointUser++
        }
        else
        {
        Write-Host -ForegroundColor Yellow "EGALITE !"
        }
    }
    Else
    {
        If($CPU -like "Pierre")
        {
        Write-Host -ForegroundColor Red "PERDU !"
        $PointCPU++
        }
        elseif($CPU -like "Feuille")
        {
        Write-Host -ForegroundColor Green "GAGNE !"
        $PointUser++
        }
        else
        {
        Write-Host -ForegroundColor Yellow "EGALITE !"
        }
    }
        
    Start-Sleep 2
    Clear-Host

}

If($PointUser -gt $PointCPU)
{
    Write-Host -ForegroundColor Green "#############################"
    Write-Host -ForegroundColor Green "#                           #"
    Write-Host -ForegroundColor Green "#  Le vainqueur est USER !  #"
    Write-Host -ForegroundColor Green "#                           #"
    Write-Host -ForegroundColor Green "#############################"
}
Else
{
    Write-Host -ForegroundColor Green "############################"
    Write-Host -ForegroundColor Green "#                          #"
    Write-Host -ForegroundColor Green "#  Le vainqueur est CPU !  #"
    Write-Host -ForegroundColor Green "#                          #"
    Write-Host -ForegroundColor Green "############################"
}