class IconLogo < Formula
  desc "多尺寸 logo/icon 生成工具，支持圆角裁剪"
  homepage "https://github.com/zk3151463/icon_logo"
  url "https://github.com/zk3151463/icon_logo/releases/download/v1.0.0/icon_logo-macos.tar.gz"
  version "1.0.0"
  sha256 "1ebc62bae560b37614daade460beed14242ef5b6c7d2252abd858df3ad4c7a3e"

  def install
    bin.install "icon_logo"
  end

  test do
    system "icon_logo", "--help"
  end
end
