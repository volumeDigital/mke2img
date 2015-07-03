There are occasions when we want a non-root user to be able to create a filesystem image. This can be done by creating a blank file with dd(1), and running mke2fs on said file, but there's no way to copy files and directories to the new filesystem image without mounting it first.

This is where mke2img comes in. It's a usermode tool that copies a directory tree to an EXT2 (or EXT3) filesystem image.

(Theoretically, you could use this with a raw device file, too, but this is alpha code, so it's not advisable).

It's typically used like this:

> dd if=/dev/zero of=disk.img bs=4k count=1024
> mke2fs disk.img
> mke2img disk.img /some/dir/to/copy