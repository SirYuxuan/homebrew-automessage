class Automessage < Formula
  desc "AutoMessage - 自动发送消息工具"
  homepage "https://github.com/SirYuxuan/AutoMessage"
  url "https://github.com/SirYuxuan/AutoMessage/releases/download/1.0.0/AutoMessage.app.zip"
  sha256 "7c7ded2c446e6a9a3de4b586a25105ac0aee1bdfaa9edc20bb168b68fd648ff9"
  license "MIT"

  def install
    prefix.install "AutoMessage.app"
    bin.install_symlink prefix/"AutoMessage.app/Contents/MacOS/AutoMessage"
  end

  def caveats
    <<~EOS
      AutoMessage.app 已安装到:
        #{prefix}/AutoMessage.app
      你可以手动移动到 Applications 文件夹。
    EOS
  end

  test do
    assert_predicate prefix/"AutoMessage.app", :exist?
  end
end
