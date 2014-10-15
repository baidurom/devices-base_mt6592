.class Lcom/mediatek/mom/MobileManagerService$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/MobileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 192
    iget v0, p0, Lcom/mediatek/mom/MobileManagerService$a;->a:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 196
    iget v0, p0, Lcom/mediatek/mom/MobileManagerService$a;->a:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/mom/MobileManagerService$a;->a:I

    .line 197
    return-void
.end method
