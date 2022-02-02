FROM node:12-slim
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm ci --production
RUN npm cache clean --force
ENV NODE_ENV="production"
ENV WEBHOOK_PROXY_URL=https://smee.io/N5Vt47ImVC11ErCX
ENV APP_ID=168694
ENV PRIVATE_KEY="-----BEGIN RSA PRIVATE KEY-----\nMIIEowIBAAKCAQEA8SNEw10Ii/Xy/uC3D4BjMXz1rZe+ks13ymuTJY61wQlvkuof\nBMfmJNNZq21a8IosZ1+ulKFky6lnlSy9le0Bgp85TtkL5Rsb0mg77WqutIbSeu+a\n6dXkLko5a9juh6iknPJ2AU+u/+VcgDMueWyhsRfwHHeB/+aZ0gzA1gLUrqTANgxL\nrXad71ECahZaEbauPor2Jz4rXcqeuOmQj9LEGyCWDZsKCtEh6A6Uh1H1j7Gbrpeb\nZLYgeH7xRXm4uZj8Lqgv/xBWtVj+j5k1gVpvibzz4qAIchAf5Y69A0sjJPlYG0fl\ncf4XHr+Ri6dqcrMjdmwXGYYq/BzRFzVHso7//QIDAQABAoIBAQCvjz/nBHrOe3g4\nvJ5KuOx/AT1U71+ePd1zEDMHawlEy3vh+HYw4uDZ+s4UEv/clJyTfoP6Ti62YFW7\ns+EroGwzD32HvFn+qWfuHllTFxKu+GGRg5TDnigM05lOvZecSNngMl5bwgnk4LYh\n2CGD4eUurADymMea6ecfmI1kwpbZtks3P5VdUqQs/i2w1f4/HTRewmUONYHnX++4\nOYvhbNqk6K7R5mJZiQVD8vKme7qCJwTsOFUmfz6zxaNPsatn5e00nt/Az2VNV6S+\n/DIrZ6fKdV7bKc5JEtRIPJSCcR/hQRx+0iL1LJM4vdvI6JFlLxt+ZTNLPo7qmwsg\ns8HKQhUBAoGBAPpkpemvVVnnLTe/pZBXwDuHKDuJlB5oWpUsQ9l6foPmPCBuRA2E\nz7t9rxD2IeH3bpgCKKJCSxsqrTiz6uFeRJBqHoe411Hff8AyVA1lSidEuZ9sTYn6\nTyff2a7LTsaIn5gn83iMnZ3htvjejmRI0eCoNTxW9pgLBEPxGh1xT3cdAoGBAPaJ\nkKL47PIuQ4S1IUS280kMs1lW99CP6pBupgPbBpqR/qeBgJOvlwX2sjCk4xyAdr2m\nVO7yV8N6HQMFZno/5+r8oEwA6Fh599YJvPJqc5vsvKExodFNptJiZMEiokQRXMxz\nt9L63K2ePz6Zb/j3XkeSlKGFRLdoqs+YF7JJYfZhAoGATA26H0q0QARpxZ8eaMNe\njjY1UDAvnzTPHrQ9P5dnSiTqamdToE+Q0UARprM8A2imXOF6+h3stim2R5zOYPnD\nFaJF9697J1EdeoFO6mqzpU3Im9XHj3tKA7CIbAEwwjjJUOwBlcIQNd5TNzBSS7+a\nkARHdzZq3C+scf6PkhXSrzkCgYB+0G481oyTWqbSaZVuUik8hzLuHqUkfBLtLm1p\nCE4STkzOfvfTf/vQToCEMxy7uXzauudvbeslGvg3aJy4/4xdPIt77O+XK04HpESz\n8Xv8Vb8Fr5EMJ8RK7d/j1Nvg5Yl1hYSmGvJOwFrJ6YVGbH/rkwOvPe0F5uoOFK8D\nv2mLoQKBgBpNVLPUHIaqWoCo0knRJ/OckuRlJ0293YNfuVEXw3heB+Jny4M6JkcL\nrvfbNPQTe701HuB0MumCWMOsMrFRtlvH0ZlIlw3TWh6nU9E1WTrRC33+GJYgzOOn\nmIqSQUMGfWj8hCbhROIxu3y2Bs0Hqe9azmbVvJPJTlteToT5Lz7P\n-----END RSA PRIVATE KEY-----\n"
ENV WEBHOOK_SECRET=384df1b2fba60f788ea38055c038c388755a27f8
ENV GITHUB_CLIENT_ID=Iv1.bbb2aef2e851c226
ENV GITHUB_CLIENT_SECRET=1cb60f9914e737225437e23771b9552238528bcf
COPY . .
CMD [ "npm", "start" ]
