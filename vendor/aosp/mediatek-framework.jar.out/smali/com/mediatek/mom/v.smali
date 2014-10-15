.class Lcom/mediatek/mom/v;
.super Lcom/mediatek/mom/MobileManagerControllerBase;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/mom/IPackageBasedController;


# static fields
.field private static a:Lcom/mediatek/mom/MobileManagerControllerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/v;->a:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerControllerBase;-><init>()V

    .line 74
    return-void
.end method

.method public static final a()Lcom/mediatek/mom/MobileManagerControllerBase;
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/mom/v;->a:Lcom/mediatek/mom/MobileManagerControllerBase;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/mediatek/mom/v;

    invoke-direct {v0}, Lcom/mediatek/mom/v;-><init>()V

    sput-object v0, Lcom/mediatek/mom/v;->a:Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 83
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Create MessageInterceptController: MessageInterceptController"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 85
    :cond_0
    sget-object v0, Lcom/mediatek/mom/v;->a:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-object v0
.end method


# virtual methods
.method public clearAllSettings()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public clearPackageSettings(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public onPackageStatusChange(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 107
    const-string v0, "MoMS.MessageInterceptController"

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

    .line 109
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    return-void
.end method
