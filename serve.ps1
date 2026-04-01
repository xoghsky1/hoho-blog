# Jekyll 로컬 서버 (Ruby가 PATH에 없어도 RubyInstaller 기본 경로를 찾음)
$ErrorActionPreference = "Stop"

$rubyBin = $null
foreach ($ver in @("Ruby34-x64", "Ruby33-x64", "Ruby32-x64")) {
    $p = "C:\$ver\bin"
    if (Test-Path "$p\ruby.exe") { $rubyBin = $p; break }
}
if (-not $rubyBin) {
    $hit = Get-ChildItem "C:\Ruby*\bin\ruby.exe" -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($hit) { $rubyBin = $hit.DirectoryName }
}
if ($rubyBin) {
    $env:Path = "$rubyBin;$env:Path"
}

Set-Location $PSScriptRoot
if (-not (Test-Path "Gemfile")) {
    Write-Host "이 스크립트는 hoho_blog 폴더에 두고 실행하세요."
    exit 1
}

Write-Host "http://127.0.0.1:4000/ — 중지: Ctrl+C`n"
& bundle exec jekyll serve --host 127.0.0.1 --port 4000
