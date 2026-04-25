class Tarn < Formula
  desc "CLI-first API testing tool"
  homepage "https://github.com/NazarKalytiuk/hive"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.11.2/hive-darwin-arm64.tar.gz"
      sha256 "6b17e464eec54a9eb5e25b10af38ef6db9bd6228be2845a35fb92fc095684e22"
    else
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.11.2/hive-darwin-amd64.tar.gz"
      sha256 "e7844153293f2af53affe9f8f2586e82d5ae3b113c582fdab85065457f463eee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.11.2/hive-linux-arm64.tar.gz"
      sha256 "336090c93cd56e91d162dab5abc9e2416c5f4b7464399d3c0d4a2dabdfcdefb1"
    else
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.11.2/hive-linux-amd64.tar.gz"
      sha256 "6f4137c535392bb73869bf4330a7a127642875e27068875c5f68e0e06bafe09c"
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
