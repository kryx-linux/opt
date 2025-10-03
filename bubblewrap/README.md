bubblewrap
==========

bubblewrap is a low-level unprivileged sandbox builder used by projects
like flatpak and similar.

It depends on user namespace support[^1] in the running kernels configuration.

bubblewrap allows for an easy configuration (via bind-mounts) in an isolated
namespace and can optionally also make use of other isolation features [^2]
and syscall filtering via [libseccomp](../libseccomp/Pkgfile)[^3].

## Requirements

The kernel configuration needs at least user namespace support:
```
-> General Setup
  -> Namespaces support (NAMESPACES)
    -> User namespace (USER_NS)
```

### Alternative

If `USER_NS` is not available, an alternative bwrap binary with suid flag[^4]
can be used.

## Further reading

- [Bubblewrap - ArchWiki](https://wiki.archlinux.org/title/Bubblewrap)
- [Bubblewrap/Examples - Alpine Linux](https://wiki.alpinelinux.org/wiki/Bubblewrap/Examples)
- [Bubblewrap - Gentoo Wiki](https://wiki.gentoo.org/wiki/Bubblewrap)
- [containers/bubblewrap: Low-level unprivileged sandboxing tool used by Flatpak and similar projects](https://github.com/containers/bubblewrap)

[^1]: https://man7.org/linux/man-pages/man7/user_namespaces.7.html
[^2]: https://man7.org/linux/man-pages/man7/namespaces.7.html
[^3]: https://man.docs.euro-linux.com/EL%208/bubblewrap/bwrap.1.en.html
[^4]: https://www.redhat.com/en/blog/suid-sgid-sticky-bit