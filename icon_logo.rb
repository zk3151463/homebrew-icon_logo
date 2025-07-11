class IconLogo < Formula
  desc "多尺寸 logo/icon 生成工具，支持圆角裁剪"
  homepage "https://github.com/zk3151463/icon_logo"
  url "https://github.com/zk3151463/icon_logo/releases/download/v1.0.0/icon_logo_macos"
  version "1.0.0"
  sha256 "请替换为你实际的 macOS 构建文件的 SHA256 值"

  def install
    bin.install "icon_logo_macos" => "icon_logo"
  end

  test do
    system "icon_logo", "--help"
  end
end
