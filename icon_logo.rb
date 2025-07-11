class IconLogo < Formula
  desc "图标生成工具"
  homepage "https://github.com/zk3151463/icon_logo"
  url "https://github.com/zk3151463/icon_logo/archive/refs/tags/v1.0.8.tar.gz"
  sha256 "76e8b9b1e2bedb4018151335fa94f6e9984102b73f74ee8f97438ca92ae65cf1"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/icon_logo --help")
  end
end
