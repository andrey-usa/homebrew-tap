class Compara < Formula
  desc "Compare two tables (CSV, NDJSON, Parquet) on a composite key: counts, per-column statistics and a self-contained HTML report."
  homepage "https://github.com/andrey-usa/compara"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.0/compara-x86_64-apple-darwin.tar.gz"
      sha256 "d780d332b28719fc1c3b1852c053ad3692b93aa2449f24f029b7bd33b5d645d8"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.0/compara-aarch64-apple-darwin.tar.gz"
      sha256 "733c727a3f5282d00d985b3a0b3f2c2f82ba3a625a206d53440774334c59e831"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.0/compara-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ed380117840b1d35f448061e14b19167c1512473727648cbc37b707d49e9259"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.0/compara-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a6c9a8bd101dca70737827ac00aaf55816db11c7047e4e23e623ebc14159079b"
    end
  end

  def install
    bin.install "compara"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compara --version")
  end
end
