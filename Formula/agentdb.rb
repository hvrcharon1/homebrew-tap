class Agentdb < Formula
  desc "Single-file embedded database for AI agents — SQL + Vector Search + FTS + Graphs"
  homepage "https://github.com/hvrcharon1/agentdb"
  version "0.5.3"
  license "Unlicense"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.5.3/agentdb-aarch64-apple-darwin.tar.gz"
      sha256 ""
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.5.3/agentdb-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.5.3/agentdb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 ""
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.5.3/agentdb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "agentdb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentdb --version")
  end
end
