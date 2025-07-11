class IconLogo < Formula
  desc "图标生成工具"
  homepage "https://github.com/zk3151463/icon_logo"
  url "https://github.com/zk3151463/icon_logo/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "6c2e10b3d735da1fbf089829d2aa2d9855e30be5bcf7007f0ee627c12ec67bf5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/icon_logo --help")
  end
end
