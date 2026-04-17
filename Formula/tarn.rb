class Tarn < Formula
  desc "CLI-first API testing tool"
  homepage "https://github.com/NazarKalytiuk/hive"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.8.0/hive-darwin-arm64.tar.gz"
      sha256 "95a1d51fbc2f1bbe364316d8d0a004ae76a0c8b8e9ef530df78fa76a7bcf38ff"
    else
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.8.0/hive-darwin-amd64.tar.gz"
      sha256 "a09059113a08f096fa76511d979638334d9473fe36c35a870d059264bd17e477"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.8.0/hive-linux-arm64.tar.gz"
      sha256 "51a8b39c50e8822ecc08bf23ad0b7b7b990cef1304e4797e044a9cb765a73912"
    else
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.8.0/hive-linux-amd64.tar.gz"
      sha256 "e6c584dc16fc0cb06d8aa873279d46fe5b7cc22eea9cb57b11804713ccd4ac0e"
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
