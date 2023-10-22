'Please guess the number between 1 and 4, you have 3 tries!'

$Guess = Read-Host

$RandomNumber = Get-Random -Minimum 1 -Maximum 5

$Tries = 3

While($Tries -gt 0)
{

    if($Guess -eq $RandomNumber)
    {
    $Tries = $Tries - 1

    'YESSSS YOU GUESSED IT, THE NUMBER IS ' + $RandomNumber + ' you had ' + $Tries + ' tries left!'
    break
    }
    elseif($Guess -gt $RandomNumber)
    {
    $Tries = $Tries - 1

        if($Tries -eq 0)
        {
        break
        }
        else
        {
        'Guess again, your number ' + $Guess + ' is too high ' + $Tries + ' tries left!'
        $Guess = Read-Host
        }
    }
    elseif($Guess -lt $RandomNumber)
    {
    $Tries = $Tries - 1
        if($Tries -eq 0)
        {
        break
        }
        else
        {
        'Guess again, your number ' + $Guess + ' is too low ' + $Tries + ' tries left!'
        $Guess = Read-Host
        }

    }

}
if($Tries -eq 0 -and $Guess -ne $RandomNumber)
{
'Sorry, you lose, it was ' + $RandomNumber
}