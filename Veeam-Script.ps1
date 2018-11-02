######################################################################
# Created By @RicardoConzatti | November 2018
# www.Solutions4Crowds.com.br
######################################################################
cls
write-host "Veeam Backup Replication Info"
write-host "-----------------------------`n"
$GetVBR = Get-VBRServer
write-host "# VBR Server" -foregroundcolor "green"
write-host "Number:"$GetVBR.Count"`n"
if ($GetVBR.Count -eq 1) {
	write-host "Info:"$GetVBR.Info
	write-host "Name:"$GetVBR.Name
	write-host "Type:"$GetVBR.Type
	write-host "Unavailable:"$GetVBR.IsUnavailable
	write-host "Version:"$GetVBR.ApiVersion
	write-host "`n"
}
else {
	$ListVBRtotal = 0
	while ($GetVBR.Count -ne $ListVBRtotal) {
		write-host "Info:"$GetVBR.Info[$ListVBRtotal]
		write-host "Name:"$GetVBR.Name[$ListVBRtotal]
		write-host "Type:"$GetVBR.Type[$ListVBRtotal]
		write-host "Unavailable:"$GetVBR.IsUnavailable[$ListVBRtotal]
		write-host "Version:"$GetVBR.ApiVersion[$ListVBRtotal]
		write-host "`n"
		$ListVBRtotal++;
	}
}
$GetRepo = Get-VBRBackupRepository
write-host "# Repository Backup" -foregroundcolor "green"
write-host "Number:"$GetRepo.Count"`n"
if ($GetRepo.Count -eq 1) {
	write-host "Name:"$GetRepo.Name
	write-host "Path:"$GetRepo.Path
	write-host "Use NFS on Mount Host:"$GetRepo.UseNfsOnMountHost
	write-host "Type:"$GetRepo.TypeDisplay
	write-host "Type:"$GetRepo.IsDedupStorage
	write-host "`n"
}
else {
	$ListRepototal = 0
	while ($GetRepo.Count -ne $ListRepototal) {
		write-host "Name:"$GetRepo.Name[$ListRepototal]
		write-host "Path:"$GetRepo.Path[$ListRepototal]
		write-host "Use NFS on Mount Host:"$GetRepo.UseNfsOnMountHost[$ListRepototal]
		write-host "Type:"$GetRepo.TypeDisplay[$ListRepototal]
		write-host "Type:"$GetRepo.IsDedupStorage[$ListRepototal]
		write-host "`n"
		$ListRepototal++;
	}
}
$GetBkp = Get-VBRBackup
write-host "# Backup" -foregroundcolor "green"
write-host "Number:"$GetBkp.Count"`n"
if ($GetBkp.Count -eq 1) {
	write-host "Job name:"$GetBkp.JobName
	write-host "Job type:"$GetBkp.JobType
	write-host "Dir Path:"$GetBkp.DirPath
	write-host "Type:"$GetBkp.TypeToString
	write-host "`n"
}
else {
	$ListBkptotal = 0
	while ($GetBkp.Count -ne $ListBkptotal) {
		write-host "Job name:"$GetBkp.JobName[$ListBkptotal]
		write-host "Job type:"$GetBkp.JobType[$ListBkptotal]
		write-host "Dir Path:"$GetBkp.DirPath[$ListBkptotal]
		write-host "Type:"$GetBkp.TypeToString[$ListBkptotal]
		write-host "`n"
		$ListBkptotal++;
	}
}
$GetJob = Get-VBRJob
write-host "# Job" -foregroundcolor "green"
write-host "Number:"$GetJob.Count"`n"
if ($GetJob.Count -eq 1) {
	write-host "Name:"$GetJob.Name
	write-host "Type:"$GetJob.IsForeverIncremental
	write-host "Target dir:"$GetJob.TargetDir
	write-host "Running:"$GetJob.IsRunning
	write-host "Idle:"$GetJob.IsIdle
	write-host "Schedule Enabled:"$GetJob.IsScheduleEnabled
	write-host "Next run:"$GetJob.ScheduleOptions.NextRun
	write-host "`n"
}
else {
	$ListJobtotal = 0
	while ($GetJob.Count -ne $ListJobtotal) {
		write-host "Name:"$GetJob.Name[$ListJobtotal]
		write-host "Type:"$GetJob.IsForeverIncremental[$ListJobtotal]
		write-host "Target dir:"$GetJob.TargetDir[$ListJobtotal]
		write-host "Running:"$GetJob.IsRunning[$ListJobtotal]
		write-host "Idle:"$GetJob.IsIdle[$ListJobtotal]
		write-host "Schedule Enabled:"$GetJob.IsScheduleEnabled[$ListJobtotal]
		write-host "Next run:"$GetJob.ScheduleOptions.NextRun[$ListJobtotal]
		write-host "`n"
		$ListJobtotal++;
	}
}