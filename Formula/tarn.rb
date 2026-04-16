class Tarn < Formula
  desc "CLI-first API testing tool"
  homepage "https://github.com/NazarKalytiuk/hive"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.7.0/hive-darwin-arm64.tar.gz"
      sha256 "277d504828cb1f0b8145fef35254a17b8ac6bc007fd5bc09c5e91c128cd3c9ca"
    else
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.7.0/hive-darwin-amd64.tar.gz"
      sha256 "d10397cd2db3d4af8263b212a276b551d668ec5e45c073951eeddcd3f3573b68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.7.0/hive-linux-arm64.tar.gz"
      sha256 "f7c1c38da40cf91146f4586265de45977f8f3aee06af9ddd0d451cf041932911"
    else
      url "https://github.com/NazarKalytiuk/hive/releases/download/v0.7.0/hive-linux-amd64.tar.gz"
      sha256 "a8e7d77fad6c870241233c34f805914f6536220cdced4dbddf91d0579a0009bc"
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
