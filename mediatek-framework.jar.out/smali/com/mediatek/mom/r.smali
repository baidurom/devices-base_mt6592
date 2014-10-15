.class Lcom/mediatek/mom/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/mediatek/common/mom/IMobileConnectionCallback;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/mediatek/mom/r;->a:I

    .line 46
    iput v1, p0, Lcom/mediatek/mom/r;->b:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mom/r;->c:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 48
    iput-boolean v1, p0, Lcom/mediatek/mom/r;->d:Z

    .line 50
    return-void
.end method

.method public constructor <init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/mediatek/mom/r;->a:I

    .line 46
    iput v1, p0, Lcom/mediatek/mom/r;->b:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mom/r;->c:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 48
    iput-boolean v1, p0, Lcom/mediatek/mom/r;->d:Z

    .line 52
    iput p1, p0, Lcom/mediatek/mom/r;->a:I

    .line 53
    iput p2, p0, Lcom/mediatek/mom/r;->b:I

    .line 54
    iput-object p3, p0, Lcom/mediatek/mom/r;->c:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 55
    iput-boolean v1, p0, Lcom/mediatek/mom/r;->d:Z

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/mom/r;->c:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 88
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mediatek/mom/r;->d:Z

    .line 72
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mediatek/mom/r;->d:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/mediatek/mom/r;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/mom/r;->b:I

    return v0
.end method

.method public d()Lcom/mediatek/common/mom/IMobileConnectionCallback;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/mom/r;->c:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManagerControlToken {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/r;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/mom/r;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mom/r;->c:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
