.class Lcom/mediatek/mom/b;
.super Lcom/android/internal/content/PackageMonitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/MobileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mediatek/mom/MobileManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/mom/MobileManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/mediatek/mom/b;->a:Lcom/mediatek/mom/MobileManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/mediatek/mom/b;->a:Lcom/mediatek/mom/MobileManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;I)V

    .line 387
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mediatek/mom/b;->a:Lcom/mediatek/mom/MobileManagerService;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;I)V

    .line 395
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mediatek/mom/b;->a:Lcom/mediatek/mom/MobileManagerService;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;I)V

    .line 391
    return-void
.end method
