class Automessage < Formula
  desc "自动识别并填写验证码的 macOS 工具"
  homepage "https://github.com/SirYuxuan/AutoMessage"
  url "https://github.com/SirYuxuan/AutoMessage/releases/download/1.0.0/AutoMessage.app.zip"
  version "1.0.0"
  sha256 "7c7ded2c446e6a9a3de4b586a25105ac0aee1bdfaa9edc20bb168b68fd648ff9"
  license "MIT"

  depends_on :macos
  depends_on macos: ">= :ventura"

  def install
    # 安装到 Applications 目录
    prefix.install Dir["AutoMessage.app"]

    # 创建命令行工具的符号链接
    bin.install_symlink "/Applications/AutoMessage.app/Contents/MacOS/AutoMessage" => "automessage"
  end

  def caveats
    <<~EOS
      已安装 AutoMessage.app 到:
        #{prefix}

      要完成安装，请运行:
        ln -sf "#{prefix}/AutoMessage.app" "/Applications"

      注意事项:
      1. 首次运行时需要授予必要的系统权限
      2. 可以通过菜单栏图标或命令行 'automessage' 启动
      3. 详细使用说明请访问: #{homepage}
    EOS
  end

  test do
    assert_predicate prefix/"AutoMessage.app/Contents/MacOS/AutoMessage", :exist?
    assert_predicate prefix/"AutoMessage.app/Contents/Info.plist", :exist?
  end
end
