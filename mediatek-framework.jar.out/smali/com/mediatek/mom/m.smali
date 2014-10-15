.class Lcom/mediatek/mom/m;
.super Lcom/mediatek/mom/MobileManagerControllerBase;
.source "SourceFile"


# static fields
.field private static a:Lcom/mediatek/mom/MobileManagerControllerBase;


# instance fields
.field private b:Landroid/app/IActivityManager;

.field private c:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/m;->a:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerControllerBase;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/mediatek/mom/m;->b:Landroid/app/IActivityManager;

    .line 65
    iput-object v0, p0, Lcom/mediatek/mom/m;->c:Landroid/content/pm/IPackageManager;

    .line 76
    invoke-static {}, Lcom/mediatek/mom/m;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/m;->c:Landroid/content/pm/IPackageManager;

    .line 77
    invoke-static {}, Lcom/mediatek/mom/m;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/m;->b:Landroid/app/IActivityManager;

    .line 78
    return-void
.end method

.method public static final a()Lcom/mediatek/mom/MobileManagerControllerBase;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/mom/m;->a:Lcom/mediatek/mom/MobileManagerControllerBase;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/mediatek/mom/m;

    invoke-direct {v0}, Lcom/mediatek/mom/m;-><init>()V

    sput-object v0, Lcom/mediatek/mom/m;->a:Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 84
    :cond_0
    sget-object v0, Lcom/mediatek/mom/m;->a:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-object v0
.end method

.method private a(ILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const-string v0, "com.mediatek.security"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .parameter

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 158
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const-string v1, "mobilemanager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    :cond_0
    return v0
.end method

.method private b(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 131
    const-string v0, "LicenseController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkManagerIdentityInner("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1}, Lcom/mediatek/mom/m;->c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 136
    if-eqz v2, :cond_1

    .line 138
    invoke-direct {p0, v2}, Lcom/mediatek/mom/m;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-ne v3, v1, :cond_0

    .line 139
    const-string v3, "com.tencent.tcuser"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    const/16 v0, 0x65

    .line 146
    :cond_0
    :goto_0
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v2, p1}, Lcom/mediatek/mom/m;->a(ILjava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 147
    const/16 v0, 0x64

    .line 151
    :cond_1
    return v0

    .line 141
    :cond_2
    const-string v3, "com.tencent.qqpimsecure"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 142
    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 7
    .parameter

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 172
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 174
    iget-object v0, p0, Lcom/mediatek/mom/m;->c:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x1000

    iget-object v5, p0, Lcom/mediatek/mom/m;->b:Landroid/app/IActivityManager;

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :goto_0
    return-object v0

    .line 177
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 178
    :goto_1
    const-string v2, "LicenseController"

    const-string v3, "Get package info failed! "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 92
    const-string v1, "LicenseController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkManagerIdentity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/m;->c:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 97
    if-nez v2, :cond_1

    .line 98
    const-string v1, "LicenseController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No packages are found with uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    const-string v2, "LicenseController"

    const-string v3, "getPackagesForUid() failed! "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 110
    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 111
    invoke-direct {p0, v0}, Lcom/mediatek/mom/m;->b(Ljava/lang/String;)I

    move-result v0

    .line 112
    if-nez v0, :cond_0

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 121
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/m;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    return-void
.end method
