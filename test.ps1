Install-WindowsFeature -Name Web-Server -IncludeManagementTools
New-NetFirewallRule -Name "Allowhttp" -DisplayName "Allowhttp" -Profile "Any" -Direction "inbound" -Action "Allow" -LocalPort "80" -Protocol "TCP"
New-NetFirewallRule -Name "Allowhttp" -DisplayName "AllowRDP" -Profile "Any" -Direction "inbound" -Action "Allow" -LocalPort "3389" -Protocol "TCP"