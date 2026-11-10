class Compara < Formula
  desc "Compare two tables (CSV, NDJSON, Parquet) on a composite key: counts, per-column statistics and a self-contained HTML report."
  homepage "https://andrey-usa.github.io/compara/"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.6.1/compara-x86_64-apple-darwin.tar.gz"
      sha256 "32b62cac46eb3da2ba32a7c5e2208a32776a69b16131cd1e6ce10ea1f3eeb8a3"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.6.1/compara-aarch64-apple-darwin.tar.gz"
      sha256 "67474c4c33499b4f6aeea1a7673497d739d1ef806485b2f42cf925a8d27bc596"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.6.1/compara-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37bc5225c4457e94cf81a165c619060fdbb5ecbd6b0e52b3b3fb0d2bfe9c1d63"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.6.1/compara-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "438030a8d57d3c0627111ef084cc86bed2765ffa8b2b8802058f519909321d11"
    end
  end

  def install
    bin.install "compara"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compara --version")
  end
end
