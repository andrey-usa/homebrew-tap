class Compara < Formula
  desc "Compare two tables (CSV, NDJSON, Parquet) on a composite key: counts, per-column statistics and a self-contained HTML report."
  homepage "https://github.com/andrey-usa/compara"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.0/compara-x86_64-apple-darwin.tar.gz"
      sha256 "46dc976b85283887e3a548ed4ad483918bd4992642c1aba97a78438c5d2f72db"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.0/compara-aarch64-apple-darwin.tar.gz"
      sha256 "21e7b52236273ac531773948d01f6b832407c43ae90838e88c432446e4855010"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.0/compara-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "477e7e1b2568a1cde52c5d3749e673ea2149170e2ff3d1db505360ecc326bb3d"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.0/compara-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "086deddec79dbbdec8d80ff47c7c10e95a3310bee5e5cb65f2eb3d987de7de2a"
    end
  end

  def install
    bin.install "compara"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compara --version")
  end
end
