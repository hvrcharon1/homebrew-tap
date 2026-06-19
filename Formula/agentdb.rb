class Agentdb < Formula
  desc "Single-file embedded database for AI agents — SQL + Vector Search + FTS + Graphs"
  homepage "https://github.com/hvrcharon1/agentdb"
  version "0.4.4"
  license "Unlicense"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.4/agentdb-aarch64-apple-darwin.tar.gz"
      sha256 "2b2b022883ad2ee16fcb81bd8d11766359118606826ca85a65704db0980b757a"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.4/agentdb-x86_64-apple-darwin.tar.gz"
      sha256 "deb05ac6dc535bec41ac13139ea602cd9ebfa8bd20c6b1ad7464effe6d03d681"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.4/agentdb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63fe78f89a86082324333ca99ff8a5b2d0b569a4f23f4a03867ba6bd4af6a340"
    else
      url "https://github.com/hvrcharon1/agentdb/releases/download/v0.4.4/agentdb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a39353fceb24e94a12da149d578c4f584ba71070fdd69dbd71d8ccfe82eb7a4"
    end
  end

  def install
    bin.install "agentdb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentdb --version")
  end
end
