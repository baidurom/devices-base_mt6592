.class Lcom/mediatek/mom/MobileManagerControllerBase$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/MobileManagerControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/os/IBinder;

.field final synthetic b:Lcom/mediatek/mom/MobileManagerControllerBase;


# direct methods
.method constructor <init>(Lcom/mediatek/mom/MobileManagerControllerBase;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mediatek/mom/MobileManagerControllerBase$a;->b:Lcom/mediatek/mom/MobileManagerControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerControllerBase$a;->a:Landroid/os/IBinder;

    .line 145
    iput-object p2, p0, Lcom/mediatek/mom/MobileManagerControllerBase$a;->a:Landroid/os/IBinder;

    .line 146
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 149
    const-string v0, "ControllerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied! mToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerControllerBase$a;->a:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerControllerBase$a;->a:Landroid/os/IBinder;

    .line 151
    return-void
.end method
