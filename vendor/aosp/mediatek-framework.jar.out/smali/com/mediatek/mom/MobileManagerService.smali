.class public Lcom/mediatek/mom/MobileManagerService;
.super Lcom/mediatek/common/mom/IMobileManagerService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/MobileManagerService$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/mom/MobileManagerControllerBase;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/os/HandlerThread;

.field private e:Lcom/mediatek/mom/f;

.field private f:Lcom/mediatek/mom/p;

.field private g:Lcom/mediatek/mom/h;

.field private h:Lcom/mediatek/mom/o;

.field private i:Lcom/mediatek/mom/i;

.field private j:Lcom/mediatek/mom/e;

.field private k:Lcom/mediatek/mom/m;

.field private l:Lcom/mediatek/mom/l;

.field private m:Lcom/mediatek/mom/k;

.field private n:Lcom/mediatek/mom/v;

.field private final o:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    .line 100
    iput-boolean v3, p0, Lcom/mediatek/mom/MobileManagerService;->b:Z

    .line 101
    iput-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->c:Landroid/content/Context;

    .line 103
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MoMS.HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->d:Landroid/os/HandlerThread;

    .line 104
    iput-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->e:Lcom/mediatek/mom/f;

    .line 106
    iput-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    .line 107
    iput-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->g:Lcom/mediatek/mom/h;

    .line 108
    iput-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->h:Lcom/mediatek/mom/o;

    .line 109
    iput-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->i:Lcom/mediatek/mom/i;

    .line 110
    iput-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->j:Lcom/mediatek/mom/e;

    .line 111
    iput-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->k:Lcom/mediatek/mom/m;

    .line 112
    iput-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->l:Lcom/mediatek/mom/l;

    .line 113
    iput-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->m:Lcom/mediatek/mom/k;

    .line 114
    iput-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->n:Lcom/mediatek/mom/v;

    .line 383
    new-instance v0, Lcom/mediatek/mom/b;

    invoke-direct {v0, p0}, Lcom/mediatek/mom/b;-><init>(Lcom/mediatek/mom/MobileManagerService;)V

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->o:Lcom/android/internal/content/PackageMonitor;

    .line 122
    iput-object p1, p0, Lcom/mediatek/mom/MobileManagerService;->c:Landroid/content/Context;

    .line 125
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/p;->a()Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/h;->a()Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/o;->a()Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/i;->a()Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/e;->a()Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/m;->a()Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/l;->a()Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/k;->a()Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/v;->a()Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-direct {p0, v3}, Lcom/mediatek/mom/MobileManagerService;->a(I)Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/p;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    .line 136
    invoke-direct {p0, v4}, Lcom/mediatek/mom/MobileManagerService;->a(I)Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/h;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->g:Lcom/mediatek/mom/h;

    .line 137
    invoke-direct {p0, v5}, Lcom/mediatek/mom/MobileManagerService;->a(I)Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/o;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->h:Lcom/mediatek/mom/o;

    .line 138
    invoke-direct {p0, v6}, Lcom/mediatek/mom/MobileManagerService;->a(I)Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/i;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->i:Lcom/mediatek/mom/i;

    .line 139
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(I)Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/e;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->j:Lcom/mediatek/mom/e;

    .line 140
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(I)Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/m;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->k:Lcom/mediatek/mom/m;

    .line 141
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(I)Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/l;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->l:Lcom/mediatek/mom/l;

    .line 142
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(I)Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/k;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->m:Lcom/mediatek/mom/k;

    .line 143
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(I)Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/v;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->n:Lcom/mediatek/mom/v;

    .line 146
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->g:Lcom/mediatek/mom/h;

    invoke-virtual {v1}, Lcom/mediatek/mom/h;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/p;->a(Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 150
    new-instance v0, Lcom/mediatek/mom/f;

    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/mom/f;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->e:Lcom/mediatek/mom/f;

    .line 151
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->e:Lcom/mediatek/mom/f;

    invoke-static {v0}, Lcom/mediatek/mom/t;->a(Landroid/os/Handler;)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->o:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 155
    return-void
.end method

.method private a(I)Lcom/mediatek/mom/MobileManagerControllerBase;
    .locals 2
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/MobileManagerControllerBase;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 352
    const-string v0, "MobileManagerService"

    const-string v1, "clearAllSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 355
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 358
    instance-of v2, v0, Lcom/mediatek/mom/IPackageBasedController;

    if-eqz v2, :cond_0

    .line 359
    check-cast v0, Lcom/mediatek/mom/IPackageBasedController;

    invoke-interface {v0}, Lcom/mediatek/mom/IPackageBasedController;->clearAllSettings()Z

    goto :goto_0

    .line 362
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use MoMS API without valid license: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x65

    const/16 v3, 0x64

    .line 399
    const-string v0, "MobileManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageStatusChange() packageName: "

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

    .line 401
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 402
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 404
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 405
    instance-of v2, v0, Lcom/mediatek/mom/IPackageBasedController;

    if-eqz v2, :cond_0

    .line 406
    check-cast v0, Lcom/mediatek/mom/IPackageBasedController;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/mom/IPackageBasedController;->onPackageStatusChange(Ljava/lang/String;I)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/p;->onPackageStatusChange(Ljava/lang/String;I)V

    .line 413
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->g:Lcom/mediatek/mom/h;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/h;->a(Ljava/lang/String;I)V

    .line 416
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 418
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0}, Lcom/mediatek/mom/p;->c()Lcom/mediatek/mom/r;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_6

    .line 420
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->c()I

    move-result v1

    .line 421
    if-ne v1, v4, :cond_2

    const-string v2, "com.tencent.tcuser"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    if-ne v1, v3, :cond_4

    const-string v1, "com.mediatek.security"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 423
    :cond_3
    const-string v1, "MobileManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uninstall Manager App: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v1}, Lcom/mediatek/mom/p;->clearCache()Z

    .line 425
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->b(I)V

    .line 432
    :cond_4
    :goto_1
    const-string v0, "com.tencent.qqpimsecure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 433
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerService;->a()V

    .line 443
    :cond_5
    :goto_2
    return-void

    .line 428
    :cond_6
    const-string v0, "MobileManagerService"

    const-string v1, "Oops! null control token found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 435
    :cond_7
    if-nez p2, :cond_5

    .line 436
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->k:Lcom/mediatek/mom/m;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/m;->a(Ljava/lang/String;)I

    move-result v0

    .line 437
    if-ne v0, v4, :cond_8

    .line 438
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    const-string v1, "com.tencent.tcuser"

    const-string v2, "com.tencent.tcuser.ztool.service.PermissionService"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 439
    :cond_8
    if-ne v0, v3, :cond_5

    .line 440
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    const-string v1, "com.mediatek.security"

    const-string v2, "com.mediatek.security.service.PermControlService"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/p;->a(I)V

    .line 334
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/p;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use MoMS API without attachment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 289
    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use MoMS API without valid uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    return-void
.end method

.method private c(I)Z
    .locals 2
    .parameter

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 339
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->k:Lcom/mediatek/mom/m;

    invoke-virtual {v1, p1}, Lcom/mediatek/mom/m;->a(I)I

    move-result v1

    .line 340
    if-eqz v1, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 343
    :cond_0
    return v0
.end method


# virtual methods
.method public declared-synchronized attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;)Z
    .locals 6
    .parameter

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    const-string v0, "attach()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 307
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->k:Lcom/mediatek/mom/m;

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/m;->a(I)I

    move-result v2

    .line 308
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0}, Lcom/mediatek/mom/p;->b()I

    move-result v0

    .line 311
    const-string v3, "MobileManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attach() currentIdentity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " checkIdentity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-nez p1, :cond_0

    .line 314
    const-string v0, "MobileManagerService"

    const-string v1, "attach with null callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    const/4 v0, 0x0

    .line 324
    :goto_0
    monitor-exit p0

    return v0

    .line 317
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v3, p1, v1, v0, v2}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IMobileConnectionCallback;III)Z

    move-result v0

    .line 319
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 320
    const-string v3, "MobileManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attach() with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " identity: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 322
    :cond_1
    :try_start_2
    const-string v3, "MobileManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attach() with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " identity: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public cancelNotification(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 698
    const-string v0, "cancelNotification()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->i:Lcom/mediatek/mom/i;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/i;->a(Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public checkPermission(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 564
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public checkPermissionAsync(Ljava/lang/String;ILcom/mediatek/common/mom/IRequestedPermissionCallback;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V

    .line 569
    return-void
.end method

.method public checkPermissionAsyncWithData(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V

    .line 578
    return-void
.end method

.method public checkPermissionWithData(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 573
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public clearAllSettings()V
    .locals 1

    .prologue
    .line 347
    const-string v0, "clearAllSettings()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerService;->a()V

    .line 349
    return-void
.end method

.method public clearPackageSettings(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 365
    const-string v0, "clearPackageSettings()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 366
    const-string v0, "MobileManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPackageSettings("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 369
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 372
    instance-of v2, v0, Lcom/mediatek/mom/IPackageBasedController;

    if-eqz v2, :cond_0

    .line 373
    check-cast v0, Lcom/mediatek/mom/IPackageBasedController;

    invoke-interface {v0, p1}, Lcom/mediatek/mom/IPackageBasedController;->clearPackageSettings(Ljava/lang/String;)Z

    goto :goto_0

    .line 376
    :cond_1
    return-void
.end method

.method public deletePackage(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 677
    const-string v0, "deletePackage()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 681
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->g:Lcom/mediatek/mom/h;

    invoke-virtual {v2, p1}, Lcom/mediatek/mom/h;->d(Ljava/lang/String;)V

    .line 683
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 684
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 328
    const-string v0, "detach()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->b(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->b(I)V

    .line 330
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->c:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump MobileManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v0, v1

    .line 212
    :cond_2
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_3

    .line 213
    aget-object v2, p3, v0

    .line 214
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_5

    .line 238
    :cond_3
    new-instance v1, Lcom/mediatek/mom/MobileManagerService$a;

    invoke-direct {v1}, Lcom/mediatek/mom/MobileManagerService$a;-><init>()V

    .line 241
    array-length v2, p3

    if-ge v0, v2, :cond_4

    .line 242
    aget-object v2, p3, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    .line 244
    const-string v0, "permission"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 245
    invoke-virtual {v1, v5}, Lcom/mediatek/mom/MobileManagerService$a;->b(I)V

    .line 257
    :cond_4
    :goto_2
    invoke-virtual {v1, v5}, Lcom/mediatek/mom/MobileManagerService$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {v1, v7}, Lcom/mediatek/mom/MobileManagerService$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {v1, v6}, Lcom/mediatek/mom/MobileManagerService$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {v1, v8}, Lcom/mediatek/mom/MobileManagerService$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/mediatek/mom/MobileManagerService$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 217
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 218
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 220
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 221
    const-string v0, "Mobile manager dump options:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    const-string v0, "  [-h] [-c] [controller] ..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    const-string v0, "    -c: print the specific controller"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    const-string v0, "    -h: print this help"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const-string v0, "  controller may be one of:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    const-string v0, "    permission: list permission configuration"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    const-string v0, "    package: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    const-string v0, "    receiver: list packages that cannot receive BOOT_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const-string v0, "    notification: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    const-string v0, "    firewall: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_6
    const-string v3, "-c"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; use -h for help"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 246
    :cond_7
    const-string v0, "package"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 247
    invoke-virtual {v1, v6}, Lcom/mediatek/mom/MobileManagerService$a;->b(I)V

    goto/16 :goto_2

    .line 248
    :cond_8
    const-string v0, "receiver"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    invoke-virtual {v1, v7}, Lcom/mediatek/mom/MobileManagerService$a;->b(I)V

    goto/16 :goto_2

    .line 250
    :cond_9
    const-string v0, "notification"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 251
    invoke-virtual {v1, v8}, Lcom/mediatek/mom/MobileManagerService$a;->b(I)V

    goto/16 :goto_2

    .line 252
    :cond_a
    const-string v0, "firewall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/mediatek/mom/MobileManagerService$a;->b(I)V

    goto/16 :goto_2
.end method

.method public enableInterceptionController(Z)V
    .locals 3
    .parameter

    .prologue
    .line 721
    const-string v0, "enableInterceptionController()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 722
    const-string v0, "MobileManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableInterceptionController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->l:Lcom/mediatek/mom/l;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/l;->enableController(Z)V

    .line 724
    return-void
.end method

.method public enablePermissionController(Z)V
    .locals 3
    .parameter

    .prologue
    .line 529
    const-string v0, "enablePermissionController()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->b(Ljava/lang/String;)V

    .line 530
    const-string v0, "MobileManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePermissionController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/p;->enableController(Z)V

    .line 532
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 642
    const-string v0, "forceStopPackage()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 644
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 646
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->g:Lcom/mediatek/mom/h;

    invoke-virtual {v2, p1}, Lcom/mediatek/mom/h;->c(Ljava/lang/String;)V

    .line 648
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 649
    return-void
.end method

.method public getBootReceiverEnabledSetting(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    .line 615
    const-string v0, "getBootReceiverEnabledSetting()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->h:Lcom/mediatek/mom/o;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/o;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 627
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 629
    return v0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    const-string v3, "MobileManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstalledPackages()Ljava/util/List;
    .locals 1
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
    .line 379
    const-string v0, "getInstalledPackages()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->g:Lcom/mediatek/mom/h;

    invoke-virtual {v0}, Lcom/mediatek/mom/h;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInterceptionEnabledSetting()Z
    .locals 1

    .prologue
    .line 727
    const-string v0, "getInterceptionEnabledSetting()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->c(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->l:Lcom/mediatek/mom/l;

    invoke-virtual {v0}, Lcom/mediatek/mom/l;->isControllerEnabled()Z

    move-result v0

    return v0
.end method

.method public getNotificationEnabledSetting(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 708
    const-string v0, "getNotificationEnabledSetting()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->c(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->i:Lcom/mediatek/mom/i;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/i;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    const-string v0, "getPackageGrantedPermissions()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 538
    return-object v0
.end method

.method public getParentPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserConfirmTime(J)J
    .locals 5
    .parameter

    .prologue
    .line 581
    const-string v0, "getUserConfirmTime"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->c(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/p;->a(J)J

    move-result-wide v0

    .line 583
    const-string v2, "MobileManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserConfirmTime() timeBound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-wide v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    const-string v0, "getVersionName()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 297
    const-string v0, "MoMS.1.2.0"

    return-object v0
.end method

.method public installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 660
    const-string v0, "installPackage()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 662
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 664
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->g:Lcom/mediatek/mom/h;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/mom/h;->a(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V

    .line 666
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    return-void
.end method

.method public registerManagerApListener(ILandroid/os/IBinder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 448
    const-string v0, "registerManagerApListener()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->b(Ljava/lang/String;)V

    .line 452
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/MobileManagerService;->a(I)Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v0

    .line 453
    const-string v1, "MobileManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerManagerApListener() controllerID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {v0, p2}, Lcom/mediatek/mom/MobileManagerControllerBase;->registerManagerApListener(Landroid/os/IBinder;)V

    .line 460
    :goto_1
    return-void

    .line 450
    :cond_0
    const-string v0, "registerManagerApListener()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_1
    const-string v0, "MobileManagerService"

    const-string v1, "registerManagerApListener() failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBootReceiverEnabledSetting(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 598
    const-string v0, "setBootReceiverEnabledSetting()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 600
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 602
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->h:Lcom/mediatek/mom/o;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/mom/o;->a(Ljava/lang/String;Z)V

    .line 604
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    return-void
.end method

.method public setFirewallPolicy(IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 690
    const-string v0, "setFirewallPolicy()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->j:Lcom/mediatek/mom/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/mom/e;->a(IIZ)V

    .line 692
    return-void
.end method

.method public setNotificationCache(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/NotificationCacheRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 713
    const-string v0, "setNotificationCache()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->i:Lcom/mediatek/mom/i;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/i;->a(Ljava/util/List;)V

    .line 715
    return-void
.end method

.method public setNotificationEnabledSetting(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 703
    const-string v0, "setNotificationEnabledSetting()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->i:Lcom/mediatek/mom/i;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/i;->a(Ljava/lang/String;Z)V

    .line 705
    return-void
.end method

.method public setPermissionCache(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    const-string v0, "setPermissionCache()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->b(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0}, Lcom/mediatek/mom/p;->clearCache()Z

    .line 555
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/p;->b(Ljava/util/List;)V

    .line 556
    return-void
.end method

.method public setPermissionRecord(Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 1
    .parameter

    .prologue
    .line 542
    const-string v0, "setPermissionRecord()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->b(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/PermissionRecord;)V

    .line 544
    return-void
.end method

.method public setPermissionRecords(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    const-string v0, "setPermissionRecords()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->b(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->f:Lcom/mediatek/mom/p;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/p;->b(Ljava/util/List;)V

    .line 549
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 165
    const-string v0, "MobileManagerService"

    const-string v1, "systemReady()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 168
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 171
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/mediatek/mom/MobileManagerControllerBase;->systemReady(Landroid/content/Context;)V

    goto :goto_0

    .line 175
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/MobileManagerService;->b:Z

    .line 176
    return-void
.end method

.method public triggerManagerApListener(ILandroid/os/Bundle;I)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    const-string v0, "triggerManagerApListener"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->c(Ljava/lang/String;)V

    .line 472
    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, p1}, Lcom/mediatek/mom/MobileManagerService;->a(I)Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v1

    .line 478
    const-string v2, "MobileManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerManagerApListener() controllerID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defaultResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {v1}, Lcom/mediatek/mom/MobileManagerControllerBase;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_0

    .line 484
    invoke-static {p1, v1, p2, p3}, Lcom/mediatek/mom/t;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    .line 492
    :goto_0
    return v0

    .line 487
    :cond_0
    const-string v1, "MobileManagerService"

    const-string v2, "Trigger null listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 490
    :cond_1
    const-string v1, "MobileManagerService"

    const-string v2, "triggerManagerApListener() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public triggerManagerApListenerAsync(ILandroid/os/Bundle;ILandroid/os/IBinder;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    const-string v0, "triggerManagerApListenerAsync"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->c(Ljava/lang/String;)V

    .line 499
    if-nez p4, :cond_0

    .line 500
    const-string v0, "MobileManagerService"

    const-string v1, "triggerManagerApListenerAsync() with null callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/MobileManagerService;->a(I)Lcom/mediatek/mom/MobileManagerControllerBase;

    move-result-object v0

    .line 508
    const-string v1, "MobileManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerManagerApListenerAsync() controllerID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " defaultResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-eqz v0, :cond_2

    .line 513
    invoke-virtual {v0}, Lcom/mediatek/mom/MobileManagerControllerBase;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_1

    .line 515
    invoke-static {p1, v0, p2, p3, p4}, Lcom/mediatek/mom/t;->a(ILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    goto :goto_0

    .line 518
    :cond_1
    const-string v0, "MobileManagerService"

    const-string v1, "Trigger null listener!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 521
    :cond_2
    const-string v0, "MobileManagerService"

    const-string v1, "triggerManagerApListener() failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
