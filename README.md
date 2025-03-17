# 🚀 Terraform ile AWS EKS Cluster Kurulumu – Adım 6

Bu döküman, Terraform kullanarak AWS üzerinde bir EKS cluster oluşturma sürecinin **6. adımını** açıklamaktadır.

## 📍 Gereksinimler

Bu adımları uygulamadan önce aşağıdaki gereksinimlerin sağlandığından emin olun:

- **Terraform** yüklü olmalı ([Kurulum için](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)).
- **AWS CLI** yüklü olmalı ([Kurulum için](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)).
- **AWS CLI yapılandırılmalı** (`aws configure` komutu ile erişim bilgilerini ayarlayabilirsiniz):

```sh
aws configure
```

Bu komut çalıştırıldığında aşağıdaki bilgileri girmeniz istenir:

- AWS Access Key ID
- AWS Secret Access Key
- Default region name (örn: us-east-1, eu-west-1)
- Default output format (json, yaml, table vb.)

- **Terraform konfigürasyon dosyaları** (`.tf` uzantılı dosyalar) çalışma dizininde bulunmalıdır.

---

## ⚙️ Terraform Konfigürasyonunu Uygulama

### 1️⃣ **Terraform'u Başlatma**
Terraform'u başlatmak ve gerekli AWS eklentilerini indirmek için şu komutu çalıştırın:

```sh
terraform init
```

Bu komut, proje dizininde gerekli olan Terraform modüllerini ve sağlayıcılarını indirir.

### 2️⃣ **Terraform Planını İnceleme**
Terraform’un AWS üzerinde ne gibi değişiklikler yapacağını görmek için şu komutu çalıştırın:

```sh
terraform plan
```

Bu komut, planlanan değişiklikleri göstererek, herhangi bir hata olup olmadığını kontrol etmenizi sağlar.

### 3️⃣ **Terraform Konfigürasyonunu Uygulama**
Planı inceledikten ve her şeyin doğru göründüğünden emin olduktan sonra, Terraform konfigürasyonunu uygulamak için aşağıdaki komutu çalıştırın:

```sh
terraform apply
```

Komutu çalıştırdıktan sonra Terraform size “Planı onaylamak istiyor musunuz?” şeklinde bir onay sorusu yöneltecektir. Devam etmek için `yes` yazın.

### ✅ **Başarıyla Tamamlandıktan Sonra**
Terraform işlemi tamamlandığında, oluşturulan kaynakların detaylarını ekranda görebilirsiniz.

EKS cluster’ın başarılı bir şekilde oluşturulduğunu doğrulamak için şu AWS CLI komutunu kullanabilirsiniz:

```sh
aws eks --region eu-west-2 update-kubeconfig --name eks-cluster
```



