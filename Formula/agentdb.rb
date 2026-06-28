class Agentdb < Formula
  desc "Single-file embedded database for AI agents — SQL + Vector Search + FTS + Graphs"
  homepage "https://github.com/hvrcharon1/agentdb"
  version "0.5.0"
  license "Unlicense"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.5.0/agentdb-aarch64-apple-darwin.tar.gz"
      sha256 "37cabc1ba9fdccb43c8427a7dab8c7e3f8ea623ff206ed75d61e2d647bc53674"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.5.0/agentdb-x86_64-apple-darwin.tar.gz"
      sha256 "84aa2420ea7115c2b11c4e06cf679def2a5885ec3e594dd3fce8b201f0475b33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.5.0/agentdb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab2c4ba78f309402033f680b97a95f085a83f75fab79cbb136cfcd03803148bd"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.5.0/agentdb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21fb26f68d9fc686534eac267fc1d8f5789f7d85d1428af8c3702d0b5e34f6a6"
    end
  end

  def install
    bin.install "agentdb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentdb --version")
  end
end
