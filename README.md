# docker_geektime_ebook_maker
Dockerfile for [把极客时间专栏装进Kindle](https://github.com/jachinlin/geektime_ebook_maker) 。

## Docker Hub

https://hub.docker.com/r/jostyee/docker_geektime_ebook_maker/

## Usage

- 查询

        docker run -v `pwd`:/output geektime_ebook_maker query -u $mobile -p $passwd

- 生成mobi

        docker run -v `pwd`:/output geektime_ebook_maker ebook -c $cid -u $mobile -p $passwd

