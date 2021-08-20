# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scrape < Formula
  desc "CLI utility to scrape emails from websites"
  homepage "https://github.com/lawzava/scrape"
  version "1.7.1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lawzava/scrape/releases/download/v1.7.1/scrape_darwin_x86_64.tar.gz"
      sha256 "58b261c0c2a6e91fc9d567997e8fcf662e46e78099851e7b46e04077b74201a7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lawzava/scrape/releases/download/v1.7.1/scrape_darwin_arm64.tar.gz"
      sha256 "2038e1ff870e8daf9f46b6b9afc8316e4862f1f750281930f47d528ec5b68493"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lawzava/scrape/releases/download/v1.7.1/scrape_linux_x86_64.tar.gz"
      sha256 "bdb30e34af4c3f96034649917cc7d0645161884613c612ff8ac24cbf8c976f2d"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lawzava/scrape/releases/download/v1.7.1/scrape_linux_armv6.tar.gz"
      sha256 "e0cea9714835730037ef7a494a6f73715afa5454938ff88c86905388990cbfc2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lawzava/scrape/releases/download/v1.7.1/scrape_linux_arm64.tar.gz"
      sha256 "e2d130e74c35efd23e481a7c6425dbfdc0ef97d28ffd194d7734f273c1cf416d"
    end
  end

  def install
    bin.install "scrape"
  end
end
