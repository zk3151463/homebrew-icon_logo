class IconLogo < Formula
  desc "图标生成工具"
  homepage "https://github.com/zk3151463/icon_logo"
  url "https://github.com/zk3151463/icon_logo/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "f20828adc28a7a4df3a21ab197ca81b659c0e1fee0b93a74914d3682a3b979f9"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/icon_logo --help")
  end
end
