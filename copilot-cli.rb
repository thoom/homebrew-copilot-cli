
require "language/node"

class CopilotCli < Formula
  desc "GitHub Copilot CLI"
  homepage "https://github.com/github/copilot-cli"
  url "https://registry.npmjs.org/@github/copilot/-/copilot-1.0.46.tgz"
  sha256 "cd923eaf41cf1e60ec24ecaf0b413601664532f484ae7d37e20c3ddd9b0c8e2e"
  version "1.0.46"
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
