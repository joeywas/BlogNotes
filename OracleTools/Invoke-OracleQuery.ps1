Function Invoke-OracleQuery {
    try {
        Add-Type -Path “D:\Oracle\Oracle.ManagedDataAccess.dll”
        $user = 'sys'
        $password = '36b2e105544612a5'
        $dataSource = "localhost:1521/XE"
        $con = New-Object Oracle.ManagedDataAccess.Client.OracleConnection(“User Id=$user;Password=$password;Data Source=$dataSource”);
        $con.Open();
    } catch {
        $_
    }
}

Invoke-OracleQuery