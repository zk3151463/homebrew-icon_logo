class IconLogo < Formula
  desc "图标生成工具"
  homepage "https://github.com/zk3151463/icon_logo"
  url "https://github.com/zk3151463/icon_logo/archive/refs/tags/v1.0.8.tar.gz"
  sha256 "ff79bd97135805e14ecffdb6cab7d4f9c6a15c419a78b696955fc7eb80813336"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/icon_logo --help")
  end
end
