.class Lcom/mediatek/mom/h;
.super Lcom/mediatek/mom/MobileManagerControllerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/h$b;,
        Lcom/mediatek/mom/h$a;
    }
.end annotation


# static fields
.field static a:Z

.field private static b:Lcom/mediatek/mom/MobileManagerControllerBase;

.field private static f:Lcom/mediatek/mom/h$a;

.field private static g:Lcom/mediatek/mom/h$b;


# instance fields
.field private c:Landroid/app/IActivityManager;

.field private d:Landroid/content/pm/IPackageManager;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/mom/h;->a:Z

    .line 76
    sput-object v1, Lcom/mediatek/mom/h;->b:Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 232
    sput-object v1, Lcom/mediatek/mom/h;->f:Lcom/mediatek/mom/h$a;

    .line 259
    sput-object v1, Lcom/mediatek/mom/h;->g:Lcom/mediatek/mom/h$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerControllerBase;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/mediatek/mom/h;->c:Landroid/app/IActivityManager;

    .line 78
    iput-object v0, p0, Lcom/mediatek/mom/h;->d:Landroid/content/pm/IPackageManager;

    .line 80
    iput-object v0, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    .line 90
    invoke-static {}, Lcom/mediatek/mom/h;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/h;->c:Landroid/app/IActivityManager;

    .line 91
    invoke-static {}, Lcom/mediatek/mom/h;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/h;->d:Landroid/content/pm/IPackageManager;

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/h;->c:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 99
    invoke-direct {p0, v0}, Lcom/mediatek/mom/h;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string v1, "PackageController"

    const-string v2, "getCurrentUser() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final a()Lcom/mediatek/mom/MobileManagerControllerBase;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/mediatek/mom/h;->b:Lcom/mediatek/mom/MobileManagerControllerBase;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/mediatek/mom/h;

    invoke-direct {v0}, Lcom/mediatek/mom/h;-><init>()V

    sput-object v0, Lcom/mediatek/mom/h;->b:Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 86
    :cond_0
    sget-object v0, Lcom/mediatek/mom/h;->b:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-object v0
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    .line 187
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mom/h;->d:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(ILjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 193
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/ParceledListSlice;->populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 194
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->isLastSlice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 199
    const-string v2, "PackageController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installed packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {v0}, Lcom/mediatek/mom/h;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/mediatek/mom/h;->d:Landroid/content/pm/IPackageManager;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x1000

    invoke-interface {v2, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 204
    iget-object v3, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v1, "PackageController"

    const-string v2, "getPackageInfo() failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :cond_2
    return-void
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .parameter

    .prologue
    .line 290
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 242
    const-string v0, "PackageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v0, Lcom/mediatek/mom/h;->f:Lcom/mediatek/mom/h$a;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/mediatek/mom/h$a;

    invoke-direct {v0, p0}, Lcom/mediatek/mom/h$a;-><init>(Lcom/mediatek/mom/h;)V

    sput-object v0, Lcom/mediatek/mom/h;->f:Lcom/mediatek/mom/h$a;

    .line 246
    :cond_0
    const/4 v0, 0x0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/h;->d:Landroid/content/pm/IPackageManager;

    sget-object v2, Lcom/mediatek/mom/h;->f:Lcom/mediatek/mom/h$a;

    const-string v3, "PackageController"

    invoke-interface {v1, p1, v2, v0, v3}, Landroid/content/pm/IPackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 145
    const/4 v1, 0x0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/h;->d:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x1000

    iget-object v3, p0, Lcom/mediatek/mom/h;->c:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    if-eqz v0, :cond_3

    .line 153
    iget-object v1, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    monitor-enter v1

    .line 154
    :try_start_1
    invoke-static {v0}, Lcom/mediatek/mom/h;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_2
    :goto_1
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v2, "PackageController"

    const-string v3, "getPackageInfo() failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 162
    :cond_3
    const-string v0, "PackageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update a null PackageInfo with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 128
    const-string v0, "PackageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageStatusChange() packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    packed-switch p2, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 133
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/h;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v2, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 115
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :cond_0
    :try_start_1
    const-string v0, "PackageController"

    const-string v3, "getInstalledPackages() failed, data not yet ready."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    return-object v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/h;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v1

    .line 173
    :cond_0
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 219
    const-string v0, "PackageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceStopPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/h;->c:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/mediatek/mom/h;->c:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 268
    const-string v0, "PackageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v0, Lcom/mediatek/mom/h;->g:Lcom/mediatek/mom/h$b;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/mediatek/mom/h$b;

    invoke-direct {v0, p0}, Lcom/mediatek/mom/h$b;-><init>(Lcom/mediatek/mom/h;)V

    sput-object v0, Lcom/mediatek/mom/h;->g:Lcom/mediatek/mom/h$b;

    .line 273
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/h;->d:Landroid/content/pm/IPackageManager;

    sget-object v1, Lcom/mediatek/mom/h;->g:Lcom/mediatek/mom/h$b;

    const/4 v2, 0x2

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/mediatek/mom/MobileManagerService$a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 281
    const-string v0, "PackageController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    return-void
.end method
