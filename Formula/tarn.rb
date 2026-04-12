class Tarn < Formula
  desc "CLI-first API testing tool"
  homepage "https://github.com/NazarKalytiuk/hive"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.6.2/hive-darwin-arm64.tar.gz"
      sha256 "22b05078e006c744af274d2ca8c5a2db5208e3bbd1476e52a7783743d6ba5fca"
    else
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.6.2/hive-darwin-amd64.tar.gz"
      sha256 "539090e16b39be1ea6ea14f4db19df8b7a87dfe85192caf08eb78fa946726b7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.6.2/hive-linux-arm64.tar.gz"
      sha256 "96d553b420f8ad7830e436abf365a816bd52acaa4422e3eb1052d460d676c8ed"
    else
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.6.2/hive-linux-amd64.tar.gz"
      sha256 "4f25fbe346be00be8e3dc41097ab3aa1133bd6c91a95777f8349b499fe0512ec"
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
