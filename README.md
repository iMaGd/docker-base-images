# High Performance Docker Images for Modern Development 🐳

**Custom Docker images**, optimized for high-performance development and production across multiple programming languages and frameworks.

📦 **Available on Docker Hub**:
👉 [Docker Hub](https://hub.docker.com/u/depicter/)

---

## 🚀 Overview

This repository contains a growing collection of Dockerfiles for building minimal, secure, and developer-friendly container images. These images are designed for modern app stacks including **PHP**, and soon **Node.js**, **Python**, **Go**, and more.

---

## 📚 Currently Supported Images

### ✅ PHP

| PHP Version | Docker Tag                      | Status         |
|-------------|---------------------------------|----------------|
| PHP 8.3     | `depicter/php:8.3-fpm-alpine`   | ✅ Stable       |
| PHP 8.4     | `depicter/php:8.4-fpm-alpine`   | ✅ Stable       |

Features:
- Based on `php:<version>-fpm-alpine`
- Includes essential PHP extensions for Laravel & Symfony
- Imagick support, OPcache optimization
- Production-grade `php.ini` & FPM config

---

## 🧰 Usage Example

Pull an image:

```bash
# PHP 8.3
docker pull depicter/php:8.3-fpm-alpine
# PHP 8.4
docker pull depicter/php:8.4-fpm-alpine
```
