class Tarn < Formula
  desc "CLI-first API testing tool"
  homepage "https://github.com/NazarKalytiuk/tarn"
  version "0.11.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.5/tarn-darwin-arm64.tar.gz"
      sha256 "4a379e602185d974dbf3b3f960d02e5161a7aeb96c0c1528b5cf59e1fc49bb14"
    else
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.5/tarn-darwin-amd64.tar.gz"
      sha256 "50576a15e948e01d1da9d27f6312e7c7d38559a9bf73a767a422cc625289254d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.5/tarn-linux-arm64.tar.gz"
      sha256 "8ed29ce5ba1fef1bea334115b6f24ed83ce9fe92f06b43d8c0ab5402eb4bcc00"
    else
      url "https://github.com/NazarKalytiuk/tarn/releases/download/v0.11.5/tarn-linux-amd64.tar.gz"
      sha256 "c69d9ae7c09c9d01e11e73cfa277b2e88e667be8003f1b1cabb399512b5d055c"
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
