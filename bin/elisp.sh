#!/bin/sh

SITELISP="$HOME/.emacs.d/site-lisp/"

# install-elisp
wget "http://www.emacswiki.org/cgi-bin/wiki/download/install-elisp.el"
mv install-elisp.el $SITELISP

# auto-save-buffers
wget "http://0xcc.net/misc/auto-save/auto-save-buffers.el"
mv auto-save-buffers.el $SITELISP

# dmacro
wget "http://www.pitecan.com/DynamicMacro/dmacro.el"
mv dmacro.el $SITELISP

# jaspace
wget "http://homepage3.nifty.com/satomii/software/jaspace.el"
mv jaspace.el $SITELISP

# kill-summary
wget "http://mibai.tec.u-ryukyu.ac.jp/~oshiro/Programs/elisp/kill-summary.el"
mv kill-summary.el $SITELISP

# tails-history
wget "http://www.bookshelf.jp/elc/tails-history.el"
mv tails-history.el $SITELISP

# session
wget "http://downloads.sourceforge.net/emacs-session/session-2.2a.tar.gz?modtime=1061424000&big_mirror=0"
tar xf session-2.2a.tar.gz
mv ./session/lisp/session.el $SITELISP

# ElScreen
wget "ftp://ftp.morishima.net/pub/morishima.net/naoto/ElScreen/elscreen-1.4.6.tar.gz"
wget "ftp://ftp.morishima.net/pub/morishima.net/naoto/ElScreen/elscreen-w3m-0.2.2.tar.gz"
tar xf elscreen-1.4.6.tar.gz
tar xf elscreen-w3m-0.2.2.tar.gz
mv ./elscreen-1.4.6/elscreen.el $SITELISP
mv ./elscreen-w3m-0.2.2/elscreen-w3m.el $SITELISP

# TRAMP
# wget "http://ftp.gnu.org/gnu/tramp/tramp-2.1.15.tar.gz"
# tar xf tramp-2.1.15.tar.gz
