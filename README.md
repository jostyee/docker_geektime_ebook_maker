# docker_geektime_ebook_maker
Dockerfile for [把极客时间专栏装进Kindle](https://github.com/jachinlin/geektime_dl) 。

## Docker Hub

https://hub.docker.com/r/jostyee/docker_geektime_ebook_maker/

## Usage

- 登录

        docker run -v `pwd`:/output geektime_ebook_maker login --account=$mobile --password=$passwd

- 查询

        docker run -v `pwd`:/output geektime_ebook_maker query

- 生成mobi

        docker run -v `pwd`:/output geektime_ebook_maker ebook $cid

- 下载音频

        docker run -v `pwd`:/output geektime_ebook_maker mp3 $cid

