class Agentdb < Formula
  desc "Single-file embedded database for AI agents — SQL + Vector Search + FTS + Graphs"
  homepage "https://github.com/hvrcharon1/agentdb"
  version "0.5.3"
  license "Unlicense"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.5.3/agentdb-aarch64-apple-darwin.tar.gz"
      sha256 "b2ed13313c9522f58c17222a16013d2dca154bde0df62b1cf4251cadea3070f3"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.5.3/agentdb-x86_64-apple-darwin.tar.gz"
      sha256 "f90fbcc6cbfc355697ab59374a4cfc8e9fe1b4239f92a643ad4822229697e3b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.5.3/agentdb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09083d2d34596c27767f6fd810f7471e0ba010ffd9416b19ce0bbd53b189676d"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.5.3/agentdb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4953ee6a101e815cc582710bb393a0c6cbdb984e7bb805bda7b7c4abb6e71b65"
    end
  end

  def install
    bin.install "agentdb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentdb --version")
  end
end
