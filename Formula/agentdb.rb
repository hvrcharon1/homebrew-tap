class Agentdb < Formula
  desc "Single-file embedded database for AI agents — SQL + Vector Search + FTS + Graphs"
  homepage "https://github.com/hvrcharon1/agentdb"
  version "0.3.4"
  license "Unlicense"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.3.4/agentdb-aarch64-apple-darwin.tar.gz"
      sha256 "b184a2a31d66d4c2169f9af6aedaaa7fbaee6e384811abcd93326883b083cc38"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.3.4/agentdb-x86_64-apple-darwin.tar.gz"
      sha256 "d484df1194449021dff28c672cd714a50a7afd41af85f1ea67be9f20ef4ed455"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.3.4/agentdb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "904a312e14f49ddf6a0b6e77d36de5cfbc3e59257657516a9fd0c02daad4c4a0"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.3.4/agentdb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc0263d8e5e38f8b19bb38de771087968f3c5035c605878f870426655e9d4d2b"
    end
  end

  def install
    bin.install "agentdb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentdb --version")
  end
end
