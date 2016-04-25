# based on work published by PowerShell MVP Keith Hill
# https://rkeithhill.wordpress.com/
enum Suit { Clubs; Diamonds; Hearts; Spades }



class PSConfSpeaker
{
  # private 
  hidden [int]$IncrementFactor
  # public Property
  $SpeakerID
  [string]$Lastname
  [string]$Firstname
  [string]$homepage
  [string]$twitter

  # Constructor
  NewClass()
  {
    # Constructor Code
    $this.SpeakerID = New-Guid
  }
   
  # Method
      
  [void] SetProperties([string]$LastName, [string]$Firstname, [string]$Homepage, [string]$Twitter)
  {
    $this.Lastname = $Lastname
    $this.Firstname = $Firstname
    $this.homepage = $Homepage
    $this.twitter = $Twitter
  }

  [void] GetSessions()
  {
    
  }
      
}


class PSConfSession
{
  # private 
  hidden [int]$IncrementFactor
  # public Property
  $SessionID
  [string]$SessionDescription
  [PSConfSpeaker]$SessionSpeaker
  [PSConfSchedule]$SessionSchedule

  # Constructor
  NewClass()
  {
    # Constructor Code
    $this.SessionID = New-Guid
  }
   
  # Method
      
  [void] SetProperties([string]$Description, [PSConfSpeaker]$SessionSpeaker, [PSConfSchedule]$SessionSchedule)
  {
     $this.SessionDescription = $Description
     $this.SessionSpeaker = $SessionSpeaker
     $this.SessionSchedule = $SessionSchedule
  }
   
  [PSConfSession] GetSessionDetails($GUID, [string]$Name)
  {
    return $this
  }
  
  [PSConfSchedule] GetSessionSchedule(){

    return $this.sessionschedule
  }   
}

class PSConfSchedule{}

# instantiate class
$PSConfSpeaker = [PSConfSpeaker]::new()
$PSConfSession = [PSConfSession]::new()
$PSConfSchedule = [PSConfSchedule]::new()

<#.Synopsis
Displays information about a specific Session at PSConf.EU 2016
.DESCRIPTION
Displays information about a specific Session at PSConf.EU 2016
.EXAMPLE
Get-PSConfSession -name 'I Hate Powershell'
.EXAMPLE
Get-PSConfSession -speaker 'Jeff Snover'
.EXAMPLE
Get-PSConfSession -speaker 'Tobias Weltner' | Get-PSConfResource
#>
function Get-PSConfSession
{
    [CmdletBinding()]
    param
    (
        # <!<SnippetParam2Help>!>
        [Parameter(Mandatory=$false, ValueFromPipelineByPropertyName=$false,Position=0)]
        $SessionName,
        
        # <!<SnippetParam1Help>!>
        [Parameter(Mandatory=$false, ValueFromPipelineByPropertyName=$true,Position=1)]
        [PSConfSpeaker]$PSConfSpeaker
     )

        Begin
        {
          
        }

        Process
        {
          
        }

        End
        {

        }
}


<#.Synopsis
Displays information about a speaker at the PSConf.EU 2016
.DESCRIPTION
Displays information about a speaker at the PSConf.EU 2016
.EXAMPLE
Get-PSConfSpeaker -SpeakerName 'Weltner'
.EXAMPLE
Get-PSConfSession -SpeakerName 'I hate Powershell' | Get-PSConfSpeaker
.EXAMPLE
Get-PSConfSpeaker -SpeakerName 'Tobias Weltner' | Get-PSConfSession
#>
function Get-PSConfSpeaker
{
    [CmdletBinding()]
    param
    (
        # <!<SnippetParam1Help>!>
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$false,Position=0)]
        [String]$SpeakerName,


        # <!<SnippetParam1Help>!>
        [Parameter(Mandatory=$false, ValueFromPipelineByPropertyName=$true,Position=1)]
        [PSConfSession]$PSConfSession
    
    )

        Begin
        {
          
        }

        Process
        {
          
        }

        End
        {

        }
}


<#.Synopsis
Shall download all resources for a given Session from GitHub:
https://github.com/m0rgenthau/PSConfEU2016
.DESCRIPTION
Shall download all resources for a given Session from GitHub:
https://github.com/m0rgenthau/PSConfEU2016
.EXAMPLE
Get-PSConfResources -session "*"
.EXAMPLE
Get-PSConfSession -name 'I Hate Powershell' | Get-PSConfResource
#>
function Get-PSConfResource
{
    [CmdletBinding()]
    param
    (
        # <!<SnippetParam1Help>!>
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true,Position=0)]
        $parameter1,

        # <!<SnippetParam2Help>!>
        [int]$parameter2)

        Begin
        {
          
        }

        Process
        {
          
        }

        End
        {

        }
}

<#.Synopsis
Displays the schedule
.DESCRIPTION
Displays the schedule
.EXAMPLE
Get-PSConfSchedule -date '04/20/2016'
.EXAMPLE
Get-PSConfSchedule -time '12:00'
.EXAMPLE
Get-PSConfSession -name 'Powershell goes Softwareengineering' | Get-PSConfSchedule
#>
function Get-PSConfSchedule
{
    [CmdletBinding()]
    param
    (
        # <!<SnippetParam1Help>!>
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true,Position=0)]
        $parameter1,

        # <!<SnippetParam2Help>!>
        [int]$parameter2)

        Begin
        {
          
        }

        Process
        {
          
        }

        End
        {

        }
}

<#.Synopsis
Get's you some coffe ;)
.DESCRIPTION
Not really getting you coffee anyway, but if it does, you propably shouldn't drink that.
.EXAMPLE
Get-Coffe
#>
function Get-Coffe 
{
    [CmdletBinding()]
    param
    (

	   )



    $output = @'
                                    o$$$$$$oo
                                 o$"        "$oo
                                 $   o""""$o  "$o
                                "$  o  "o  "o   $
                                "$   $o $   $   o$
                                 "$       o$"$  o$
                                  "$ooooo$$  $  o$
                        o$ """ $     " $$$   "  $
                      o$        $o    $$"   "   "
                     $$  $ " $   $$$o"$    o  o$"
                     $"  o "" $   $" "   o"  $$
                     $o  " "  $  o$"   o"  o$"
                      "$o    $$  $   o"  o$$"
                       ""o$o"$"  $oo"  o$"
                        o$$ $   $$$  o$$
                        o" o oo""  "" "$o
                       o$o" ""          $
                      $" " o"   " " "   "o
                     $$ "  "  o$ o$o "   $
                    o$ $  $  o$$ "  "   ""
                    o  $ $"  " "o      o$
                    $ o         $o$oo$""
                   $o $   o  o  o"$$
                   $o  o  $  $    "$o
                   $o  $   o  $  $ "o
                    $  $   "o  $  "o"$o
                    $   "   o   $   o $$
            $o$o$o$o$$o$$$o$$o$o$$o$$o$$$o$o$o$o$o$o$o$o$o$ooo
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$   " $$$$$
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$      "$$$$
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$       $$$$
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$       $$$$
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$       $$$$
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     o$$$$"
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ooooo$$$$
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"""""
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
"$o$o$o$o$o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
  "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"""
       """""""""""""""""""""""""""""""""""""""""""""""""""""        
'@


  Write-Host 'I am not your secretary - but here, enjoy some ASCII Art.'
  Write-Host 'Source of the ASCII Art is http://ascii-art.de'
  Write-Host '' 
	Write-Host $output

}