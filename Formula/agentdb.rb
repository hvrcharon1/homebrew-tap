class Agentdb < Formula
  desc "Single-file embedded database for AI agents — SQL + Vector Search + FTS + Graphs"
  homepage "https://github.com/hvrcharon1/agentdb"
  version "0.4.0"
  license "Unlicense"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.0/agentdb-aarch64-apple-darwin.tar.gz"
      sha256 "d64391cd5b6d6629fe117c91b466c61158700ebc02236963a171aa200d41e33c"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.0/agentdb-x86_64-apple-darwin.tar.gz"
      sha256 "503bbe6d68ccb6c8fa5c5e34500769bb2b24ab30f1b7865b6a630e0f3cc8749f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.0/agentdb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "93d463a35d8ce3c3859bf8b751bde9de33a3cffb0a22555384bc94af4c2a2cc5"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.0/agentdb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d011ae62e28261e77a25598cd1b6d7d96dbffd7b087f2c2f5cbc00c18fbaa76"
    end
  end

  def install
    bin.install "agentdb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentdb --version")
  end
end
