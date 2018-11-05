# brutforce script to make some organizational units

# you need to change "DC=ad,DC=sparky-tech,DC=com" to match your domain and update the KM initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name KM_Computers -Path "ad.kmcglinc.lan" -Description "KM Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=KM_Computers,ad.kmcglinc.lan"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=KM_Computers,ad.kmcglinc.lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=KM_Computers,ad.kmcglinc.lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=KM_Computers,ad.kmcglinc.lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=KM_Computers,ad.kmcglinc.lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=KM_Computers,ad.kmcglinc.lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=KM_Computers,ad.kmcglinc.lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=KM_Computers,ad.kmcglinc.lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=KM_Computers,ad.kmcglinc.lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=KM_Computers,ad.kmcglinc.lan"
New-ADOrganizationalUnit -Name KM_Groups -Path "ad.kmcglinc.lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name KM_Privileged_Accounts -Path "ad.kmcglinc.lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name KM_Users -Path "ad.kmcglinc.lan" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=KM_Groups,ad.kmcglinc.lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=KM_Groups,ad.kmcglinc.lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=KM_Groups,ad.kmcglinc.lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=KM_Groups,ad.kmcglinc.lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=KM_Groups,ad.kmcglinc.lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=KM_Groups,ad.kmcglinc.lan"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=KM_Groups,ad.kmcglinc.lan"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
