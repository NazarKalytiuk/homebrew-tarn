class Tarn < Formula
  desc "CLI-first API testing tool"
  homepage "https://github.com/NazarKalytiuk/hive"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.9.0/hive-darwin-arm64.tar.gz"
      sha256 "f31a878f939c809b3123be8ce777c5216e6d9dd7c52db9316f4849358b6ca16d"
    else
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.9.0/hive-darwin-amd64.tar.gz"
      sha256 "4b8c12584cfbefbf0fcca387b9eb769c776f53339d788984b48fdd053a74ea20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.9.0/hive-linux-arm64.tar.gz"
      sha256 "c3c1feec6ba76f6826e5d408c5102cdb6b19dbf37b9e86b800f4abe7bba1bfa8"
    else
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.9.0/hive-linux-amd64.tar.gz"
      sha256 "d2602bd81937912dd6158d3f857f9941500fbeab77f45936245f21dae5ccf8b1"
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
