.class public Lcom/android/server/pm/Settings$BaiduInjector;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation


# static fields
.field private static mThirdBaiduApps:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.baidu.browser.apps"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.baidu.appsearch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.baidu.voiceassistant"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.baidu.searchbox"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.baidu.BaiduMap"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.baidu.netdisk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/Settings$BaiduInjector;->mThirdBaiduApps:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isThirdBaiduApps(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkg"

    .prologue
    sget-object v0, Lcom/android/server/pm/Settings$BaiduInjector;->mThirdBaiduApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, str:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v3           #str:Ljava/lang/String;
    :goto_1
    return v4

    .restart local v3       #str:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #str:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static setBaiduStopped(Lcom/android/server/pm/Settings;Landroid/os/UserHandle;Lcom/android/server/pm/PackageSetting;Z)V
    .locals 11
    .parameter "settings"
    .parameter "installUser"
    .parameter "pkSettings"
    .parameter "allowInstall"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/Settings$BaiduInjector;->isThirdBaiduApps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    #calls: Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;
    invoke-static {p0}, Lcom/android/server/pm/Settings;->access$invoke-getAllUsers-2e2378(Lcom/android/server/pm/Settings;)Ljava/util/List;

    move-result-object v10

    .local v10, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v10, :cond_2

    if-eqz p3, :cond_2

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .local v9, user:Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v3, v4

    .local v3, installed:Z
    :goto_1
    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    move-object v0, p2

    move v5, v4

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZLjava/util/HashSet;Ljava/util/HashSet;)V

    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_0

    .end local v3           #installed:Z
    :cond_1
    move v3, v2

    goto :goto_1

    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #user:Landroid/content/pm/UserInfo;
    .end local v10           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    return-void
.end method
