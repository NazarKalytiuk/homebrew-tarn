class Tarn < Formula
  desc "CLI-first API testing tool"
  homepage "https://github.com/NazarKalytiuk/hive"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.11.0/hive-darwin-arm64.tar.gz"
      sha256 "45353089eb1b56a86e0715f9ec512b118c95efd8ab3d0e2deb44e5e9dd2356d3"
    else
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.11.0/hive-darwin-amd64.tar.gz"
      sha256 "7e01bf05b1456b3e1132f65bd905ad64b0d8d1235a8bc4dcde0222e94e0d7323"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.11.0/hive-linux-arm64.tar.gz"
      sha256 "e1ea9894fe0c1550d19f543938f45107abdbf5a7d7cdfe486d15ac5f880be061"
    else
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.11.0/hive-linux-amd64.tar.gz"
      sha256 "097bc828da292585b532057fd5cd7c66ab9b4881b936764cecdb08aa3136e010"
    end
  end

  def install
    bin.install "tarn"
    bin.install "tarn-mcp"
    bin.install "tarn-lsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tarn --version")
  end
end
