## 设置alias
function k8ssoa { kubectl get pods -n soa --kubeconfig=kubeconfig }
Set-Alias soa k8ssoa

# 重命名alias
Rename-Item Alias:\old new -Force

# 获取命令历史
Get-History  # alias: h

# 调用历史命令
Invoke-History 1 # alias: r 1