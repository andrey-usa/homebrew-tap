class Compara < Formula
  desc "Compare two tables (CSV, NDJSON, Parquet) on a composite key: counts, per-column statistics and a self-contained HTML report."
  homepage "https://github.com/andrey-usa/compara"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.2/compara-x86_64-apple-darwin.tar.gz"
      sha256 "6b4e73290d3edde5a0cea6d049f2f09bf4d0d5d8375e2a746be9bdd7472cc10c"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.2/compara-aarch64-apple-darwin.tar.gz"
      sha256 "6ec0a960e9011cdfb3325578180c6300f0699302cd52756965a5911eaafb668f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.2/compara-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58f5950fcc33ee239ce64d70b12d10a4b4e586f493d262f9d6022af24315aa22"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.2/compara-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "438f82a1978500fb84f2b8cc4fb2576c5a077f8bac4b6febb204377134882b86"
    end
  end

  def install
    bin.install "compara"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compara --version")
  end
end
