cask "automessage" do
  version "v1.0.0"
  sha256 "4324eb54c10daa177eb5d85074ad514b444aa4600e5087b353a5c02385aa4401"
  url "https://github.com/SirYuxuan/AutoMessage/releases/download/#{version}/AutoMessage.app.zip"
  name "AutoMessage"
  desc "自动识别并填写验证码的 macOS 工具"
  homepage "https://github.com/SirYuxuan/AutoMessage"

  depends_on macos: ">= :ventura"

  # 安装 .app 文件
  app "AutoMessage.app"

  # 提示信息
  caveats <<~EOS
    注意事项:
    1. AutoMessage.app 已安装到 /Applications 目录
    2. 首次运行时需要授予必要的系统权限
    3. 可以通过菜单栏图标或命令行 'automessage' 启动
    4. 详细使用说明请访问: #{homepage}
  EOS
end
