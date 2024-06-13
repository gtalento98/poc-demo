FROM public.ecr.aws/spacelift/runner-ansible-aws:latest
USER root
RUN apk add rsync --no-cache su-exec
RUN curl -fsSL https://get.docker.com -o get-docker.sh | sh
USER spacelift