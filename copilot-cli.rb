
require "language/node"

class CopilotCli < Formula
  desc "GitHub Copilot CLI"
  homepage "https://github.com/github/copilot-cli"
  url "https://registry.npmjs.org/@github/copilot/-/copilot-1.0.57.tgz"
  sha256 "82cfbd191b605319821f7fd5fc8a48153e51cac088fcbb3eea40135dc37cc679"
  version "1.0.57"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/copilot", "--version"
  end
end
